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
              Icons.person,
              size: 80.0,
              color: Colors.white,
            ),
            accountEmail: null,
            accountName: null,
          ),
          MenuListTileWidget(),
        ],
      ),
    );
  }
}
