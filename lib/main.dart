import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:habs/Authentication/authentication_service.dart';
import 'package:habs/pages/home.dart';
import 'package:habs/pages/tools/login_page.dart';
import 'package:habs/pages/tools/welcome_page.dart';
import 'package:provider/provider.dart';

// main method of the application
Future<void> main() async {
  // initialize the firebase app
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

// root of the application
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      // provide the auth class and the user stream
      providers: [
        Provider<AuthenticationService>(
          create: (_) => AuthenticationService(FirebaseAuth.instance),
        ),
        StreamProvider(
            create: (context) =>
                context.read<AuthenticationService>().authStateChanges),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'habs',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: AuthenticationWrapper(),
      ),
    );
  }
}

// to return login page or home page whether you are authenticated or not
class AuthenticationWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //listen for the user from the stream
    final firebaseUser = context.watch<User>();

    // respond to the results of either a user or null
    if (firebaseUser != null) {
      return Home();
    }
    return Welcome();
  }
}
