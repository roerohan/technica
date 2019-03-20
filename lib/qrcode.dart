import 'package:flutter/material.dart';
import 'package:qrcode_reader/qrcode_reader.dart';

//new
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';

//new

class QrRoute extends StatelessWidget {
  String result;
  /*Future<String> futureString = new QRCodeReader()
      .setAutoFocusIntervalInMs(200) // default 5000
      .setForceAutoFocus(true) // default false
      .setTorchEnabled(true) // default false
      .setHandlePermissions(true) // default true
      .setExecuteAfterPermissionGranted(true) // default true
      .scan();
*/

Future<String> str =  BarcodeScanner.scan();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () async {
            print("STRING");
            print(await str);
           // print(await futureString);
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
