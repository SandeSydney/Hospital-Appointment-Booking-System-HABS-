import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DoctorsList extends StatelessWidget {
  // Constructor
  DoctorsList(
      {@required this.doctorName,
      @required this.doctorRole,
      @required this.doctorContact});

  // variables to hold passed doctor's name, role and telephone contact
  final String doctorName;
  final String doctorRole;
  final String doctorContact;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // TODO: Use the doctor's image here
      leading: Icon(
        Icons.person,
        size: 60.0,
      ),
      title: Text('Dr. ' + doctorName),
      subtitle: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(doctorRole),
          Text('Tel: ' + doctorContact),
        ],
      ),
      contentPadding: EdgeInsets.all(8.0),
      trailing: Icon(
        Icons.calendar_today,
      ),
    );
  }
}
