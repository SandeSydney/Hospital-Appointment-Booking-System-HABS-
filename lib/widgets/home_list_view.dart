import 'package:flutter/material.dart';
import 'package:habs/pages/about.dart';
import 'package:habs/pages/appointment.dart';
import 'package:habs/pages/doctors.dart';
import 'package:habs/pages/hospital_services.dart';

/// Class responsible for building the display of the Homepage of the application
class HomeListView extends StatefulWidget {
  @override
  _HomeListViewState createState() => _HomeListViewState();
}

class _HomeListViewState extends State<HomeListView> {
  // method to build items for the ListView
  Widget buildItem({String image}) {
    // making the images on the home scrollview clickable
    return GestureDetector(
//      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 0.0),
      //using an image as the child of the GestureDetector
      child: Image.asset(
        'assets/images/$image.jpg',
        width: double.infinity,
      ),
      onTap: () {
        // determine the image that has been clicked and open the necessary class handle it
        switch (image) {
          case 'logo':
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => About(),
                ));
            break;
          case 'Doctors':
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Doctors(),
                ));
            break;
          case 'Appointment':
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Appointments(),
                ));
            break;
          case 'ServicesOffered':
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HospitalServices(),
                ));
            break;
        }
      },
    );
  }

  // building the current state of the application: returning a ListView Widget
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        buildItem(image: 'logo'),
        SizedBox(height: 5),
        buildItem(image: 'Doctors'),
        SizedBox(height: 5),
        buildItem(image: 'Appointment'),
        SizedBox(height: 5),
        buildItem(image: 'ServicesOffered')
      ],
    );
  }
}
