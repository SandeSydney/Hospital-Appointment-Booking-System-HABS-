import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habs/widgets/menu_list_tile.dart';

class LeftDrawerWidget extends StatefulWidget {
  @override
  _LeftDrawerWidgetState createState() => _LeftDrawerWidgetState();
}

class _LeftDrawerWidgetState extends State<LeftDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          UserAccountsDrawerHeader(
            currentAccountPicture: Icon(
              Icons.face,
              size: 48.0,
              color: Colors.white,
            ),
            accountEmail: Text(FirebaseAuth.instance.currentUser.email),
            otherAccountsPictures: <Widget>[
              Icon(
                Icons.bookmark_border,
                color: Colors.white,
              )
            ],
            decoration: BoxDecoration(
              color: Colors.blueGrey[300],
            ),
          ),
          MenuListTileWidget(),
        ],
      ),
    );
  }
}
