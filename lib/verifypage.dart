import 'package:flutter/material.dart';
import 'qrcode.dart';
class MyButton extends StatelessWidget {
 String buttonTitle;
 Function myFunc;
Color myColor;
  MyButton(String bname,Color c , Function f) {
    buttonTitle = bname;
    myFunc=f;
    myColor=c;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: RaisedButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => QrRoute()),
            );
          },
          padding: EdgeInsets.all(12),
          color: myColor,
          child: Text(buttonTitle, style: TextStyle(color: Colors.white))),
    );
  }
}
