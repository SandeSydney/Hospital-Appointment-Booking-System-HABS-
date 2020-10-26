import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'home.dart';

class Appointments extends StatefulWidget {
  @override
  _AppointmentsState createState() => _AppointmentsState();
}

class _AppointmentsState extends State<Appointments> {
  // create the key of the form, this allows the validation of the form
  final _formKey = GlobalKey<FormState>();

  // cloud firestore instance
  final firestore = FirebaseFirestore.instance;

  // variables to hold data to be collected from the form
  String userName, email, phoneNumber;
  String appDateTime, idNumber, appReason;

  @override
  Widget build(BuildContext context) {
    String dropDownValue = 'Out-Patient Department';
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade100,
      appBar: AppBar(
        title: Text('Book Appointment'),
      ),
      // building a form using the form key stated above
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                TextFormField(
                  textCapitalization: TextCapitalization.words,
                  autocorrect: false,
                  validator: (input) {
                    if (input.isEmpty) {
                      return 'Please enter Last Name!';
                    }
                  },
                  onSaved: (input) => userName = input,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueGrey.shade200,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueGrey.shade200,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    prefixIcon: Icon(Icons.person),
                    labelText: 'Full Name',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (input) {
                    if (input.isEmpty) {
                      return 'Please enter email!';
                    }
                  },
                  onSaved: (input) => email = input,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueGrey.shade200,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueGrey.shade200,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    prefixIcon: Icon(Icons.email),
                    labelText: 'Email',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  validator: (input) {
                    if (input.length > 10 &&
                        input.length <= 0 &&
                        input.length != 10) {
                      return 'Please enter a valid Phone Number!';
                    }
                  },
                  onSaved: (input) => phoneNumber = input,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueGrey.shade200,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueGrey.shade200,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                    ),
                    prefixIcon: Icon(Icons.phone_android),
                    labelText: 'Phone Number',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  validator: (input) {
                    if (input.length > 8 &&
                        input.length <= 0 &&
                        input.length != 8) {
                      return 'Please enter a valid ID Number!';
                    }
                  },
                  onSaved: (input) => idNumber = input,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueGrey.shade200,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueGrey.shade200,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                    ),
                    prefixIcon: Icon(Icons.credit_card),
                    labelText: 'ID Number',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                DateTimePicker(
                  type: DateTimePickerType.dateTime,
                  dateMask: 'd MMM, yyyy',
                  initialValue: DateTime.now().toString(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2100),
                  icon: Icon(Icons.event),
                  onChanged: (value) => appDateTime = value,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueGrey.shade200,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueGrey.shade200,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    prefixIcon: Icon(Icons.event),
                    labelText: 'Appointment Date & Time',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  maxLength: 50,
                  textCapitalization: TextCapitalization.words,
                  autocorrect: false,
                  validator: (input) {
                    if (input.isEmpty) {
                      return 'Please enter Reason for Booking Appointment!';
                    }
                  },
                  onSaved: (input) => appReason = input,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueGrey.shade200,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blueGrey.shade200,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    prefixIcon: Icon(Icons.chat),
                    labelText: 'Reason for Appointment',
                    hintText:
                        'Treatment, Consultation, X-Ray, HIV Testing, etc.',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Cancel'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.red.shade800),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // key in the current state for validation
                        final formState = _formKey.currentState;
                        // validate the details to be submitted and proceed to send them to Cloud
                        if (formState.validate()) {
                          // pop up to show successful addition of data
                          Alert(
                            context: context,
                            title: "HABS",
                            desc: "Do you want to submit?",
                            type: AlertType.warning,
                            buttons: [
                              DialogButton(
                                child: Text(
                                  "Cancel",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                onPressed: () => Navigator.pop(context),
                                color: Colors.red.shade800,
                              ),
                              DialogButton(
                                child: Text(
                                  "OK",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                onPressed: () => {
                                  Navigator.pop(context),
                                  addData(),
                                },
                                color: Colors.green.shade800,
                              )
                            ],
                          ).show();
                        }
                      },
                      child: Text('Submit'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.green.shade800,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // method to add data to the database
  addData() {
    // map to store the received data
    Map<String, dynamic> appFormData = {
      "name": userName,
      "email": email,
      "phone number": phoneNumber,
      "ID number": idNumber,
      "application date": appDateTime,
      "application reason": appReason,
    };

    try {
      // create a reference to a collection
      CollectionReference collectionReference =
          FirebaseFirestore.instance.collection('users');
      collectionReference.add(appFormData);

      // show success
      Alert(
        context: context,
        type: AlertType.success,
        title: "HABS",
        desc: "Data Added Successfully!",
        buttons: [
          DialogButton(
            child: Text(
              "OK",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => Home(),
              ),
            ),
            width: 120,
          )
        ],
      ).show();
    } catch (e) {
      print(e.message);
    }
  }
}
