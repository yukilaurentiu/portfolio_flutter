import 'package:flutter/material.dart';
import 'components/nav_menubutton.dart';

PreferredSizeWidget navBar(BuildContext context){
  return AppBar(
    backgroundColor: Colors.white,
    actions: <Widget>[
      Row(
        children: [
          NavMenuButton(
              onPress: () {
                Navigator.pushNamed(context, '/home');
              },
              menuText: 'Home'),
          SizedBox(
            width: 10.0,
          ),
          NavMenuButton(
              onPress: () {
                Navigator.pushNamed(context, '/home');
              },
              menuText: 'About'),
          SizedBox(
            width: 10.0,
          ),
          NavMenuButton(
              onPress: () {
                Navigator.pushNamed(context, '/home');
              },
              menuText: 'Project'),
          SizedBox(
            width: 10.0,
          ),
          NavMenuButton(
              onPress: () {
                Navigator.pushNamed(context, '/home');
              },
              menuText: 'Contact'),
          SizedBox(
            width: 10.0,
          ),
        ],
      ),
    ],
  );
}