import 'package:flutter/material.dart';

class HospitalServiceList extends StatelessWidget {
  HospitalServiceList({this.icon, this.titleText});

  // variables holding the passed icon and title's text
  final IconData icon;
  final String titleText;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(8.0),
      leading: Icon(
        icon,
        size: 40.0,
      ),
      title: Text(titleText),
    );
  }
}
