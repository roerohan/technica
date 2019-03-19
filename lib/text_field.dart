import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  
  
  TextEditingController tedit;
  String _text;
  bool obscure;
  Color myColor;
  MyTextField( Color color,String text,
      TextEditingController controller, bool ob) {
   
   _text=text;
    myColor = color;
    tedit = controller;
    obscure=ob;
  }

  @override
  Widget build(BuildContext build) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 6, horizontal:50),
        child: new Center(
          widthFactor: 2,
          
          child:new TextFormField(
            
            cursorColor: myColor,
              autofocus: false,
              obscureText: obscure,
              controller: tedit,
              
              decoration: InputDecoration(
                
                //counterStyle: TextStyle(color: Colors.white),
                hintText: _text,
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                hintStyle: TextStyle(color: myColor)
              ),
            )));
  }
}
