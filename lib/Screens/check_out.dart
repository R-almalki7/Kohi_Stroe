import 'package:flutter/material.dart';
import 'package:my_project/Const/colors.dart';
import 'package:my_project/Widgets/Appbar_Buttons.dart';
import 'package:my_project/Widgets/button.dart';

import 'package:my_project/provider/mycart.dart';
import 'package:provider/provider.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    final Cc = Provider.of<Cart>(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Dark_purple,
          title: Text(
            "Checkout Screen",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
          ),
          actions: [
            ProdAndPric(),
          ],
        ),
        body: Column(
          children: [
            SingleChildScrollView(
              child: SizedBox(
                height: 400,
                child: ListView.builder(
                  padding: EdgeInsets.all(8),
                  itemCount: Cc.Selected.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: ListTile(
                        subtitle: Text("${Cc.Selected[index].name}"),
                        leading: CircleAvatar(
                          backgroundImage: AssetImage("${Cc.Selected[index].uml}"),
                        ),
                        title: Text("${Cc.Selected[index].price} SR , ${Cc.Selected[index].type}"),
                        trailing: IconButton(
                          onPressed: () {
                            Cc.removeProduct(Cc.Selected[index]);
                          },
                          icon: Icon(Icons.remove),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
         
           Column(
             children: [
               Padding(
                 padding: const EdgeInsets.all(22),
                 child: TheButton( buttonColor:Dark_purple,lableText: '${Cc.price}'),
               ),
             ],
           ),
          ],
        
        ));
  }
}
