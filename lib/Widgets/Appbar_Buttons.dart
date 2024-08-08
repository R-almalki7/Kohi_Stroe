import 'package:flutter/material.dart';
import 'package:my_project/Const/colors.dart';
import 'package:my_project/Screens/check_out.dart';
import 'package:my_project/provider/mycart.dart';
import 'package:provider/provider.dart';

class ProdAndPric extends StatelessWidget {
  const ProdAndPric({super.key});

  @override
  Widget build(BuildContext context) {
    final Cc = Provider.of<Cart>(context);
    return Row(
      children: [
        Stack(
          children: [
            Container(
              child: Text(
                "${Cc.Selected.length}",
                style: TextStyle(color: Colors.black, fontSize: 13),
              ),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(shape: BoxShape.circle, color: Pinkey),
            ),
            IconButton(
              onPressed: () {
                 Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const CheckOut()),
                    );
              },
              icon: Icon(Icons.add_shopping_cart),
              color: Colors.white,
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(right: 12),
          child: Text(
            "SR ${Cc.price}",
            style: TextStyle(fontSize: 16,color: Colors.white),
          ),
        )
      ],
    );
  }
}
