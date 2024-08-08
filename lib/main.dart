import 'package:my_project/Screens/check_out.dart';
import 'package:my_project/provider/mycart.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:my_project/Screens/details.dart';
import 'package:my_project/Screens/home.dart';
import 'package:my_project/Screens/login.dart';
import 'package:my_project/Screens/signup.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (context) {return Cart();},
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Login(),
      ),
    );
  }
}
