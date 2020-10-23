import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:habs/pages/tools/login_page.dart';
import 'package:habs/pages/tools/welcome_page.dart';

// main method of the application
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

// root of the application
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'habs',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Welcome(),
    );
  }
}
