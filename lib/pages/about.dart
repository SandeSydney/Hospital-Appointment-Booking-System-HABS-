import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:email_launcher/email_launcher.dart';

// constants for the normal text
const textNormal = TextStyle(
  fontSize: 17.5,
  fontWeight: FontWeight.normal,
  color: Colors.black87,
);

// constants for underlined headers
const underlinedHeader = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
  decoration: TextDecoration.underline,
);

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset(
                  'assets/images/logo.jpg',
                ),
                Container(
                  margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          'About Us',
                          style: underlinedHeader,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Kitale County Referral Hospital HABS is a hospital appointment booking software that gives patients the opportunity to book appointments and doctors to schedule the available appointment slots.',
                          style: textNormal,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'How the Application Works',
                          style: underlinedHeader,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'The client, via the main page, scrolls down to the \"Book Appointments\" section. '
                          'Selecting this section opens up the Appointment form that shall direct the client on what to do while collecting information.\n'
                          'The patient can also use the drawer on the left of the screen to select and view different categories that the application contains. The categories are selectable and lead to different views.',
                          style: textNormal,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Developer',
                          style: underlinedHeader,
                        ),
                        SizedBox(height: 8),
                        Text(
                          'SanDev Flutter Developer',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'sandesydney02@gmail.com',
                          style: TextStyle(
                            fontSize: 17,
                            fontStyle: FontStyle.italic,
                            color: Colors.blue.shade600,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Contact Developer',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.blue.shade900,
                              letterSpacing: 1.25,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
