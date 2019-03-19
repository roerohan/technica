import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  
  
  TextEditingController tedit;
  String _text;
  Color myColor;
  MyTextField( Color color,String text,
      TextEditingController controller) {
   
   _text=text;
    myColor = color;
    tedit = controller;
  }

  @override
  Widget build(BuildContext build) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: new TextFormField(
              autofocus: false,
              obscureText: true,
              controller: tedit,
              decoration: InputDecoration(
                hintText: _text,
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                
              ),
            ));
  }
}
