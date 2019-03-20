import 'package:flutter/material.dart';
import 'button.dart';
import 'text_field.dart';
import 'create_account.dart';

void main() => runApp(MyApp());

Color c=Color.fromRGBO(184, 184, 184, 1.0);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doctor Doctor',
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
      ),
      home: HomePageGui('Doctor Doctor'),
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
        backgroundColor: const Color.fromARGB(255, 0, 27, 72),
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
                    c, 'EMAIL', email, false),
                new MyTextField(c, 'PASSWORD', pswd, true),
                new Container(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child:Row(
                  children: [
                  Expanded(
                    child: new Text("FORGOT PASSWORD", textAlign:TextAlign.right,style: TextStyle(color: Color.fromRGBO(107,107,107, 1.0)))
                )])),
                new MyButton('LOG IN', Color.fromRGBO(239, 239, 239, 1.0), Color.fromRGBO(0, 27, 72, 1.0),() {
                  //Navigator.push(context,
                  //    MaterialPageRoute(builder: (context) => LogInPage()));
                }),
                SizedBox(height: 100),
                Text("DON'T HAVE AN ACCOUNT?", style: TextStyle(color: Color.fromRGBO(239,239,239,.7)),),
                new MyButton("SIGN UP",Color.fromRGBO(239, 239, 239, 1.0), Color.fromRGBO(0, 27, 72, .7),(){
                    
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LogInPage()));

                } ),
              ],
            ),
          )),
        )

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
