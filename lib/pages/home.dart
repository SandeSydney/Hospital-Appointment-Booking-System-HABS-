import 'package:flutter/material.dart';
import 'package:habs/widgets/left_drawer.dart';
import 'package:habs/pages/about.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HABS - Kitale District Hospital',),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: () => _openPageAbout(
              context: context,
              fullscreenDialog: true,
            ),
            tooltip: 'About Us',
          )
        ],
      ),
      drawer: LeftDrawerWidget(),
      body: SafeArea(
        child: Container(),
      ),
    );
  }

  // Method to open the about page
  void _openPageAbout({BuildContext context, bool fullscreenDialog = false}){
    Navigator.push(
        context,
        MaterialPageRoute( //navigating to the about page
          fullscreenDialog:fullscreenDialog,
          builder: (context) => About(),
        )
    );
  }
}
