import 'package:flutter/material.dart';

// this class lists the services that are offered at the hospital
class Appointments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Appointment'),
      ),
      body: Center(
        child: Icon(
          Icons.assignment,
          size: 120.0,
        ),
      ),
    );
  }
}
