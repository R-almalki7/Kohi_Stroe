import 'package:flutter/material.dart';
import 'package:my_project/Screens/home.dart';


class TheButton extends StatelessWidget {
  final Color buttonColor;
  final String lableText;
 

  const TheButton(
      {super.key, required this.buttonColor, required this.lableText});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const Home()),
                      );
      },
      label: Text(
        lableText,
        style: TextStyle(fontSize: 19, color: Colors.white),
      ),
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(buttonColor),
        padding: WidgetStateProperty.all(EdgeInsets.all(22)),
        shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      ),
    );
  }
}
