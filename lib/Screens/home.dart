// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_project/Const/colors.dart';
import 'package:my_project/Screens/check_out.dart';
import 'package:my_project/Screens/details.dart';
import 'package:my_project/Screens/login.dart';
import 'package:my_project/Widgets/Appbar_Buttons.dart';
import 'package:my_project/model/item.dart';
import 'package:my_project/provider/mycart.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
     final Cc = Provider.of<Cart>(context);
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(
                        radius: 55,
                        backgroundImage: AssetImage("assets/Aziz.jpg")),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/coffee.jpg"),
                          fit: BoxFit.cover),
                    ),
                    accountName: Text("AbdulAziz Al",
                        style: TextStyle(color: Colors.white)),
                    accountEmail: Text("AbdulAziz292@outlook.com",
                        style: TextStyle(color: Colors.white)),
                  ),
                  ListTile(
                    title: Text("Home"),
                    leading: Icon(Icons.home),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text("My products"),
                    leading: Icon(Icons.add_shopping_cart),
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const CheckOut()),);
                    },
                  ),
                  ListTile(
                    title: Text("About"),
                    leading: Icon(Icons.help_center),
                    onTap: () {

                    },
                  ),
                  ListTile(
                    title: Text("Logout"),
                    leading: Icon(Icons.exit_to_app),
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    },
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 12),
                child: Text(
                  "Developed by Reem Almalki © 2024",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          actions: [
           ProdAndPric(),
          ],
          backgroundColor: Dark_purple,
          title: Text(
            'Home',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 22),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 15 / 14,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 33),
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Details(Product: items[index])),
                    );
                  },
                  child: GridTile(
                    child: Stack(children: [
                      Positioned(
                        right: 0,
                        left: 0,
                        bottom: 9,
                        top: -1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(55),
                          child: Image.asset('${items[index].uml}'),
                        ),
                      ),
                    ]),
                    footer: GridTileBar(
                      // shouls i delet it ?
                      backgroundColor: Color.fromARGB(66, 149, 112, 251),

                      trailing:
                       
                         IconButton(
                            color: Colors.grey,
                            onPressed: () {
                              Cc.addProduct(items[index]);
                            },
                            icon: Icon(Icons.add)),
                     

                      leading: Text("SR${items[index].price}"),

                      title: Text(""),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
