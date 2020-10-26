import 'package:flutter/material.dart';
import 'package:habs/widgets/hospital_service_list_items.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            icon: FontAwesomeIcons.ambulance,
            titleText: 'Ambulance Services',
          ),
          HospitalServiceList(
            icon: Icons.airline_seat_flat,
            titleText: 'Ward Facilities',
          ),
          HospitalServiceList(
            icon: FontAwesomeIcons.userNurse,
            titleText: 'Nursing',
          ),
          HospitalServiceList(
            icon: Icons.medical_services,
            titleText: 'Out-Patient Department',
          ),
          HospitalServiceList(
            icon: Icons.local_pharmacy,
            titleText: 'Pharmacy and Diagnosis',
          ),
          HospitalServiceList(
            icon: FontAwesomeIcons.flask,
            titleText: 'Laboratory',
          ),
          HospitalServiceList(
            icon: FontAwesomeIcons.xRay,
            titleText: 'X-Ray',
          ),
          HospitalServiceList(
            icon: FontAwesomeIcons.disease,
            titleText: 'Radiotherapy',
          ),
          HospitalServiceList(
            icon: Icons.wheelchair_pickup,
            titleText: 'Physiotherapy',
          ),
          HospitalServiceList(
            icon: FontAwesomeIcons.clinicMedical,
            titleText: 'Diabetics Clinic',
          ),
          HospitalServiceList(
            icon: FontAwesomeIcons.biohazard,
            titleText: 'Magnetic Resonance Imaging (MRI)',
          ),
          HospitalServiceList(
            icon: FontAwesomeIcons.vials,
            titleText: 'HIV Testing and Counselling',
          ),
          HospitalServiceList(
            icon: Icons.pregnant_woman,
            titleText: 'Ante-Natal Clinic (ANC)',
          ),
          HospitalServiceList(
            icon: Icons.child_care,
            titleText: 'Post Natal Clinic',
          ),
        ],
      ),
    );
  }
}
