import 'package:flutter/material.dart';
import 'text_field.dart';
import 'button.dart';

TextEditingController name, email, pswd;

class LogInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: <Widget>[

           SizedBox(
            width: 100,
            height: 300,
          ),
          new MyButton('SIGN UP', Color.fromRGBO(184,184,184,100), () {


            
          })
        ],
      ),
    ));
  }
}
