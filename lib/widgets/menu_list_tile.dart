import 'package:flutter/material.dart';
import 'package:habs/pages/appointment.dart';
import 'package:habs/pages/hospital_services.dart';
import 'package:habs/pages/doctors.dart';

class MenuListTileWidget extends StatefulWidget {
  @override
  _MenuListTileWidgetState createState() => _MenuListTileWidgetState();
}

class _MenuListTileWidgetState extends State<MenuListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // to navigate to list of services offered in the hospital
        ListTile(
          leading: Icon(Icons.local_hospital),
          title: Text('Services Offered'),
          onTap: (){
            Navigator.pop(context);
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HospitalServices(),
                )
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.tag_faces),
          title: Text('Doctors'),
          onTap: (){
            Navigator.pop(context);
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Doctors(),
                )
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.assignment),
          title: Text('Appointments'),
          onTap: (){
            Navigator.pop(context);
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Appointments(),
                )
            );
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
          onTap: (){
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
