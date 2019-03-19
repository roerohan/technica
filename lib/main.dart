import 'package:flutter/material.dart';
import 'button.dart';
import 'text_field.dart';
import 'create_account.dart';

void main() => runApp(MyApp());

Color c=Color.fromRGBO(184, 184, 184, 100);

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

TextEditingController email;
TextEditingController pswd;

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
        backgroundColor: const Color.fromRGBO(0, 27, 72, 100),
        body: SingleChildScrollView(
          child: Center(
              child: Container(
            child: Column(
              children: <Widget>[
                SizedBox(
                  width: 100,
                  height: 300,
                ),
                new MyTextField(
                    c, 'email', email, false),
                new MyTextField(c, 'Password', pswd, true),
                new MyButton('LOG IN', Color.fromRGBO(184, 184, 184, 100), () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LogInPage()));
                })
              ],
            ),
          )),
        )

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
