import 'package:flutter/material.dart';
import 'components/nav_menubutton.dart';

PreferredSizeWidget navBar(BuildContext context, PageController pageNav){
  void pages(int page) {
    pageNav.jumpToPage(page);
    Navigator.pop(context);
  }

  return AppBar(
    backgroundColor: Colors.white,
    actions: <Widget>[
      Row(
        children: [
          NavMenuButton(
              onPress: () {
                pages(0);
              },
              menuText: 'home'),
          SizedBox(
            width: 10.0,
          ),
          NavMenuButton(
              onPress: () {
                pages(1);
              },
              menuText: 'my projects'),
          SizedBox(
            width: 10.0,
          ),
          NavMenuButton(
              onPress: () {
                pages(2);
              },
              menuText: 'my skills'),
          SizedBox(
            width: 10.0,
          ),
          NavMenuButton(
              onPress: () {
                pages(3);
              },
              menuText: 'CV'),
          SizedBox(
            width: 10.0,
          ),
          NavMenuButton(
              onPress: () {
                pages(4);
              },
              menuText: 'contact me'),
          SizedBox(
            width: 10.0,
          ),
        ],
      ),
    ],
  );
}