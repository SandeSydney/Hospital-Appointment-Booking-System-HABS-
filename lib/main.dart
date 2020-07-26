import 'package:flutter/material.dart';
import 'package:habs/pages/home.dart';

// main method of the application
void main() => runApp(MyApp());

// root of the application
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'habs',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Home(),
    );
  }
}
