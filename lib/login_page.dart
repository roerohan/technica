import 'package:flutter/material.dart';
import 'button.dart';
import 'text_field.dart';

class LoginPage extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Column(
        children: <Widget>[

          new MyButton('LOG IN', Colors.white, Colors.white,(){})

        ],
      ),
    );
  }
}
