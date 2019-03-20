import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
 String buttonTitle;
 Function myFunc;
Color backgroundColor;
Color textColor;
  MyButton(String bname,Color backCol , Color textCol, Function f) {
    buttonTitle = bname;
    myFunc=f;
    backgroundColor=backCol;
    textColor=textCol;
  }

  @override
  Widget build(BuildContext build) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: RaisedButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          onPressed: () {
            //insert functionality here
           myFunc();
          },
          padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 12.0),
          color: backgroundColor,
          child: Text(buttonTitle, style: TextStyle(color: textColor, fontSize: 20.0))),
    );
  }
}
