import 'package:flutter/material.dart';
import 'package:build_context/build_context.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: FlutterLogo(
                colors: context.primaryColor,
                style: FlutterLogoStyle.stacked,
                size: 55,
              ),
            ),
            accountName: Text('Api consuming'),
            accountEmail: Text('Username'),
          ),
          ListTile(leading: Icon(Icons.list), title: Text('Api consuming')),
        ],
      ),
    );
  }
}
