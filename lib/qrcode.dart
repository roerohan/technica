import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'package:qrcode_reader/qrcode_reader.dart';

class QrPage extends StatefulWidget {
  @override
  QrRoute createState() => new QrRoute();
}

class QrRoute extends State<QrPage> {

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
      body: Center(
        child: Text(patientName),
      ),
    );
  }
}
