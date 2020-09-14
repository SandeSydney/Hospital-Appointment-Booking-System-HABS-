import 'package:flutter/material.dart';
import 'package:habs/widgets/doctors_list_tile.dart';

// this class lists the doctors at the hospital
class Doctors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      appBar: AppBar(
        title: Text('Doctors'),
      ),
      body: ListView(
        children: <Widget>[
          DoctorsList(
            doctorName: 'Sande Sydney',
            doctorRole: 'Bone Surgeon',
            doctorContact: '0728124585',
          ),
          Divider(color: Colors.black),
          DoctorsList(
            doctorName: 'Matete Taro',
            doctorRole: 'Psychiatrist',
            doctorContact: '0758624122',
          ),
          Divider(color: Colors.black),
          DoctorsList(
            doctorName: 'Joan James',
            doctorRole: 'General Obstetrician',
            doctorContact: '07562221214',
          ),
          Divider(color: Colors.black),
          DoctorsList(
            doctorName: 'Malunga Marley',
            doctorRole: 'General Obstetrician',
            doctorContact: '0763214587',
          ),
          Divider(color: Colors.black),
          DoctorsList(
            doctorName: 'Bossy Ross',
            doctorRole: 'Gynaecologist',
            doctorContact: '0765854587',
          ),
          Divider(color: Colors.black),
          DoctorsList(
            doctorName: 'Peter Parker',
            doctorRole: 'Radiologist',
            doctorContact: '0769854590',
          ),
          Divider(color: Colors.black),
          DoctorsList(
            doctorName: 'Anna Mitosis',
            doctorRole: 'Ear, Nose and Throat',
            doctorContact: '07563245854',
          ),
          Divider(color: Colors.black),
        ],
      ),
    );
  }
}
