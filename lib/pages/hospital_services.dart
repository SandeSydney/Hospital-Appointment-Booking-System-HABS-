import 'package:flutter/material.dart';
import 'package:habs/widgets/hospital_service_list_items.dart';

// this class lists the services that are offered at the hospital
class HospitalServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      appBar: AppBar(
        title: Text('Services Offered'),
      ),
      body: ListView(
        children: <Widget>[
          HospitalServiceList(
            icon: Icons.airline_seat_flat,
            titleText: 'Ambulance Services',
          ),
          HospitalServiceList(
            icon: Icons.airline_seat_flat,
            titleText: 'Ward Facilities',
          ),
          HospitalServiceList(
            icon: Icons.airline_seat_flat,
            titleText: 'Nursing',
          ),
          HospitalServiceList(
            icon: Icons.airline_seat_flat,
            titleText: 'Out-Patient Department',
          ),
          HospitalServiceList(
            icon: Icons.airline_seat_flat,
            titleText: 'Pharmacy and Diagnosis',
          ),
          HospitalServiceList(
            icon: Icons.airline_seat_flat,
            titleText: 'Laboratory',
          ),
          HospitalServiceList(
            icon: Icons.airline_seat_flat,
            titleText: 'X-Ray',
          ),
          HospitalServiceList(
            icon: Icons.airline_seat_flat,
            titleText: 'Radiotherapy',
          ),
          HospitalServiceList(
            icon: Icons.airline_seat_flat,
            titleText: 'Physiotherapy',
          ),
        ],
      ),
    );
  }
}
