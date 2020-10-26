import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:habs/Authentication/authentication_service.dart';
import 'package:habs/pages/home.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
        title: Text('Log In'),
      ),
      body: ModalProgressHUD(
        inAsyncCall: _showProgress,
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            // implement key
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Implement fields
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: false,
                  // ignore: missing_return
                  validator: (input) {
                    if (input.isEmpty) {
                      return 'Please enter email!';
                    }
                  },
                  onSaved: (input) => _email = input,
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
                    prefixIcon: Icon(Icons.email),
                    labelText: 'Email',
                  ),
                ),
                SizedBox(
                  height: 15.0,
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
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Password',
                  ),
                  obscureText: true,
                ),
                SizedBox(
                  height: 15.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    // call the authentication service using provider
                    context.read<AuthenticationService>().signIn(
                          email: _email,
                          password: _password,
                        );
                    // Navigate to home page
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                    );
                  },
                  child: Text('Log In'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
