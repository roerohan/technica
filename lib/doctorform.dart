import 'package:flutter/material.dart';
void main() {
  runApp(new MaterialApp(home: new MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter"),
        backgroundColor: new Color.fromARGB(255,151,202,219),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: new Text("PRESCRIPTION",textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Novecento sans' ),),
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(45.0))),
                    content: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(25.0),
                            child: TextFormField(
                              initialValue: 'Medicine 1',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(25.0),
                            child: TextFormField(
                              initialValue: 'Medicine 2',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: RaisedButton(
                                shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(50.0))),
                                color: Color.fromARGB(100,1,138,190),
                              child: Text("PRESCRIBE!", ),
                              onPressed: () {
                                if (_formKey.currentState.validate()) {
                                  _formKey.currentState.save();

                                }
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                });
          },
          child: Text("Open Popup"),
        ),
      ),
    );
  }
}
