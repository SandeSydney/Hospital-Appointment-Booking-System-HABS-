import 'package:flutter/material.dart';

// this class lists the services that are offered at the hospital
class HospitalServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Services Offered'),
      ),
      body: Center(
        child: Icon(
          Icons.local_hospital,
          size: 120.0,
        ),
      ),
    );
  }
}
