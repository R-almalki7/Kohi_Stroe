// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_project/Const/colors.dart';
import 'package:my_project/Screens/signup.dart';
import 'package:my_project/Widgets/button.dart';
import 'package:my_project/Widgets/textField.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 247, 247),
      appBar: AppBar(
        backgroundColor: Light_purple,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(33.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            
        
            Image.asset("assets/Kohi.png",width: 600,height: 400,),
        
        
              SizedBox(
                height: 20,
              ),
              TheTextField(
                  obscure_Text: false,
                  InputType: TextInputType.emailAddress,
                  hint_Text: 'Enter Your Email: '),
              SizedBox(
                height: 50,
              ),
              TheTextField(
                  obscure_Text: true,
                  InputType: TextInputType.visiblePassword,
                  hint_Text: 'Enter Your Password: '),
              SizedBox(
                height: 50,
              ),
              
              
              TheButton(
                  lableText: 'Sign in',
                  buttonColor: Dark_purple, 
                ),
             
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Do not have an account?',
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const Signup()),
                      );
                    },
                    child: Text('sign up', style: TextStyle(color: Colors.black)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
