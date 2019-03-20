import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrShow extends StatelessWidget{
  final String patient_id;
  QrShow({this.patient_id});
  @override
  Widget build(BuildContext context) {
    return new QrImage(
      data:patient_id,
      size:200.0,
    );
  }
}
