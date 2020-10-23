import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:habs/pages/tools/login_page.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // don't show modal in initial loading
  bool _showProgress = false;

  // values to hold email and password
  String _email, _password;

  // key to be used for the form
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: ModalProgressHUD(
        inAsyncCall: _showProgress,
        child: Form(
          // implement key
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Implement fields
              TextFormField(
                // ignore: missing_return
                validator: (input) {
                  if (input.isEmpty) {
                    return 'Please enter email!';
                  }
                },
                onSaved: (input) => _email = input,
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              TextFormField(
                // ignore: missing_return
                validator: (input) {
                  // ignore: missing_return
                  if (input.length < 6) {
                    return 'Your password should be at least 6 characters!';
                  }
                },
                onSaved: (input) => _password = input,
                decoration: InputDecoration(
                  labelText: 'Password',
                ),
                obscureText: true,
              ),
              ElevatedButton(
                onPressed: () {
                  register();
                },
                child: Text('Register'),
              )
            ],
          ),
        ),
      ),
    );
  }

  // method to Register into the application
  Future<void> register() async {
    // validate fields
    // key in the current state
    final formState = _formKey.currentState;
    if (formState.validate()) {
      // save the form data into the variables
      formState.save();
      // register user to to firebase
      try {
        await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: _email, password: _password);
        // Navigate to home page
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ),
        );

        // show the progress indicator
        setState(() {
          // show the progress indicator once the Register button has been clicked.
          _showProgress = true;
        });
      } catch (e) {
        // print the error message
        print(e.message);
      }
    }
  }
}
