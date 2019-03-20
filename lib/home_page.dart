import 'package:flutter/material.dart';
import 'qrcode_generate.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  String patient_id = "5c91697ed534cc68288585b2";
  int _selectIndex = 0;

  List<Widget> icons = [
    new Image.asset(
      "assets/QRcode.png",
      width: 30,
      height: 30,
    ),
    new Image.asset(
      "assets/GreyHistory.png",
      width: 30,
      height: 30,
    ),
    new Image.asset(
      "assets/GreyHeart.png",
      width: 30,
      height: 30,
    ),
    new Image.asset(
      "assets/GreySettings.png",
      width: 30,
      height: 30,
    ),
  ];

  List<String> iconNames = [
    "QRcode.png",
    "History.png",
    "Heart.png",
    "Settings.png"
  ];
  void changeTab(int index) {
    _selectIndex = index;
    setState(() {
      String imagePath = "";
      for (int i = 0; i < icons.length; i++) {
        Widget icon = icons[i];
        imagePath = "assets/Grey${iconNames[i]}";
        if (i == index) {
          imagePath = "assets/" + iconNames[i];
        }
        icons[i] = new Image.asset(
          imagePath,
          width: 30,
          height: 30,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0, 0.5, 0.5, 1],
            colors: <Color>[
              Color.fromARGB(255, 151, 202, 219),
              Color.fromARGB(255, 151, 202, 219),
              Colors.white,
              Colors.white,
            ],
          ),
        ),
        child: Center(
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: QrShow(
                patient_id: patient_id,
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectIndex, // this will be set when a new tab is tapped
        onTap: changeTab,
        fixedColor: Color.fromARGB(255, 0, 27, 72),
        items: [
          BottomNavigationBarItem(
            icon: Container(
              child: icons[0],
              padding: EdgeInsets.symmetric(vertical: 5),
            ),
            title: new Text(
              'QR CODE',
              style: TextStyle(fontSize: 10),
            ),
          ),
          BottomNavigationBarItem(
            icon: Container(
              child: icons[1],
              padding: EdgeInsets.symmetric(vertical: 5),
            ),
            title: new Text(
              'PRESCRIPTIONS',
              style: TextStyle(fontSize: 10),
            ),
          ),
          BottomNavigationBarItem(
              icon: Container(
                child: icons[2],
                padding: EdgeInsets.symmetric(vertical: 5),
              ),
              title: Text(
                'HEALTH DATA',
                style: TextStyle(fontSize: 10),
              )),
          BottomNavigationBarItem(
              icon: Container(
                child: icons[3],
                padding: EdgeInsets.symmetric(vertical: 5),
              ),
              title: Text(
                'SETTINGS',
                style: TextStyle(fontSize: 10),
              ))
        ],
      ),
    );
  }
}
