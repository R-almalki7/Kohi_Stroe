import 'package:flutter/material.dart';
import 'package:my_project/Const/colors.dart';
import 'package:my_project/Screens/home.dart';
import 'package:my_project/Widgets/Appbar_Buttons.dart';
import 'package:my_project/model/item.dart';

class Details extends StatelessWidget {
    final Item Product ;

  const Details({super.key, required this.Product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Dark_purple,
        title: Text(
          'Details ',
          style: TextStyle(color: Colors.white),
        ),
          leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,),
          onPressed: () {
           Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
          },
        ),
        actions: [
           
       ProdAndPric(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset(Product.uml,
            width: 400,
            height: 390,
          ),
          SizedBox(height: 11),
          Text(
            '${Product.price} SR',
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(height: 16),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.all(4),
                child: Text("New"),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 225, 120, 113),
                    borderRadius: BorderRadius.circular(4)),
              ),
              SizedBox(width: 18),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 25),
                  Icon(Icons.star, color: Colors.amber, size: 25),
                  Icon(Icons.star, color: Colors.amber, size: 25),
                  Icon(Icons.star, color: Colors.amber, size: 25),
                  Icon(Icons.star, color: Colors.amber, size: 25),
                ],
              ),
              SizedBox(
                width: 99,
              ),
              Row(
                children: [
                  Icon(
                    Icons.edit_location,
                    size: 23,
                    color: Dark_purple,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    Product.name,
                    style: TextStyle(fontSize: 16),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 13,
          ),
         
         Text(Product.type,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),textAlign: TextAlign.center,),
         
       
          SizedBox(
            height: 8,
          ),
             
             Text(Product.details,textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
             
        ]),
      ),
    );
  }
}
