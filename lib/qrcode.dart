import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'package:qrcode_reader/qrcode_reader.dart';
import 'button.dart';
class QrPage extends StatefulWidget {
  @override
  QrRoute createState() => new QrRoute();
}

class QrRoute extends State<QrPage> {
  final _formKey = GlobalKey<FormState>();
  String patient_id;
  String patientName = "loading....";
  Future<Object> _getPatient() async {
    String url = "https://technicajalapeno.herokuapp.com/get-patient";
    http.Response res = await http.post(Uri.encodeFull(url), body: {
      "patient_id": patient_id,
    }); // post api call
    return res.body;
  }

  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    patient_id = await new QRCodeReader()
      .scan();
    print(patient_id);
    var patient_data = json.decode(await _getPatient());
    print(patient_data);
    setState(() {
      patientName = patient_data["name"];
    });
    print(patient_data);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(color: Color.fromARGB(255, 151, 202, 219)),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(Icons.person, size: 80,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                  Text(patientName, style: TextStyle(fontSize: 25),),
                  Text("Age: 19", style: TextStyle(fontSize: 25)),
                  Text("Blood Group: AB-", style: TextStyle(fontSize: 25))
                ],)
              ],
            ),),
          SizedBox(height: 20,),
          MyButton("PRESCRIBE",Color.fromRGBO(239, 239, 239, 1.0), Color.fromRGBO(0, 27, 72, .7),(){
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: new Text("PRESCRIPTION",textAlign: TextAlign.center,style: TextStyle(fontFamily: 'Novecento sans' ),),
                    shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(45.0))),
                    content: SingleChildScrollView(child:Form(
                      key: _formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(25.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Medicine 1"
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(25.0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Medicine 1"
                              ),
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
                    )),
                  );
                });
          },
        )
          ],
      )),
    );
  }
}
