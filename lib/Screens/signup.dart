// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_project/Const/colors.dart';
import 'package:my_project/Screens/login.dart';
import 'package:my_project/Widgets/button.dart';
import 'package:my_project/Widgets/textField.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 247, 247),
      appBar: AppBar(
        backgroundColor: Light_purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              TheTextField(
                  obscure_Text: false,
                  InputType: TextInputType.name,
                  hint_Text: 'Enter Your Username '),
              SizedBox(
                height: 50,
              ),
              TheTextField(
                  obscure_Text: false,
                  InputType: TextInputType.emailAddress,
                  hint_Text: 'Enter Your Email '),
              SizedBox(
                height: 50,
              ),
              TheTextField(
                  obscure_Text: true,
                  InputType: TextInputType.visiblePassword,
                  hint_Text: 'Enter Your Password '),
             SizedBox(
                height: 50,
              ),
            
                TheButton(
                  lableText: 'Sign in',
                  buttonColor: Light_purple, 
                ),
             
            
            SizedBox(
                height: 30,
              ), 
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already have an account?',style: TextStyle(color: Colors.grey),),
                TextButton(
                    onPressed: (){
                     Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),);
                    },
                    child: Text('sign in', style: TextStyle(color: Colors.black)),)
              ],
            )
            
            
            
            
            
            ],
          ),
        ),
      ),
    );
  }
}
