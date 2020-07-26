import 'package:flutter/material.dart';

// this class lists the doctors at the hospital
class Doctors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctors'),
      ),
      body: Center(
        child: Icon(
          Icons.tag_faces,
          size: 120.0,
        ),
      ),
    );
  }
}
