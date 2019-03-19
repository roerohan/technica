import 'package:flutter/material.dart';
import 'button.dart';
import 'text_field.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CSI-VIT Xapp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomePageGui('CSI-VIT Xapp'),
    );
  }
}


TextEditingController t;

class HomePageGui extends StatelessWidget {
  String title;
  //MyButton b = new MyButton('Scan Barcode', Colors.blue, goToScanScreen);

  HomePageGui(String s) {
    title = s;
  }
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(title),
        ),
        body: Center(
            child: Container(
          child: Column(
            children: <Widget>[
              
              new MyTextField(Colors.white,'Password', t),
              
              new Center(
                child: new Container(
                    decoration: new BoxDecoration(
                      color: Colors.purple,
                    ),
                    ),
              ),
             
             
             
             
             
              new MyButton('Doctor', Colors.blue, () {}),
              new MyButton('Patient', Colors.blue, () {})
            ],
          ),
        ))

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
