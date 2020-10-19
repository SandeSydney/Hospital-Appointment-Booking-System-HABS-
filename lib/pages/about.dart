import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// constants for the normal text
const textNormal = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.normal,
  color: Colors.black87,
  letterSpacing: 1.25,
);

// constants for underlined headers
const underlinedHeader = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
  decoration: TextDecoration.underline,
);

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/logo.jpg',
                width: 300.0,
              ),
              Container(
                margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'About Us',
                        style: underlinedHeader,
                      ),
                      Text(
                        'Kitale County Referral Hospital HABS is a hospital appointment booking software that gives patients the opportunity to book appointments and doctors to schedule the available appointment slots.',
                        style: textNormal,
                      ),
                      Text(
                        'How the Application Works',
                        style: underlinedHeader,
                      ),
                      Text(
                        'The client, via the main page, scrolls down to the \"Book Appointments\" section. '
                        'Selecting this section opens up the Appointment form that shall direct the client on what to do while collecting information.',
                        style: textNormal,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
