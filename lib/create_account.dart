import 'package:flutter/material.dart';
import 'text_field.dart';
import 'button.dart';

TextEditingController name, email, pswd, confPswd;
Color c = Color.fromRGBO(184, 184, 184, 100);
bool isDoc = false;

class LogInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: const Color.fromRGBO(0, 27, 72, 100),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  width: 100,
                  height: 250,
                ),
                new MyTextField(c, "NAME", name, false),
                new MyTextField(c, "EMAIL", email, false),
                new MyTextField(c, "PASSWORD", pswd, true),
                new MyTextField(c, "CONFIRM PASSWORD", confPswd, true),
                SizedBox(
                  width: 100,
                  height: 60,
                ),
                Text('ARE YOU A DOCTOR?'),
                Checkbox(
                  value: isDoc,
                  onChanged: (bool val) {
                  
                  },
                ),
                new MyButton('SIGN UP', c, () {
                  if (pswd.text == confPswd.text) {
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>))
                  }
                }),
              ],
            ),
          ),
        ));
  }
}
