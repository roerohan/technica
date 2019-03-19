import 'package:flutter/material.dart';
import 'text_field.dart';
import 'button.dart';

TextEditingController name, email, pswd;
Color c = Color.fromRGBO(184, 184, 184, 100);

class LogInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              width: 100,
              height: 250,
            ),
            new MyTextField(c, "NAME", name, false),
            new MyTextField(c, "EMAIL", name, false),
            new MyTextField(c, "PASSWORD", name, true),
            new MyTextField(c, "CONFIRM PASSWORD", name, true),
            SizedBox(
              width: 100,
              height: 60,
            ),
            new MyButton('SIGN UP', c, () {}),
            
          ],
        ),
      ),
    ));
  }
}
