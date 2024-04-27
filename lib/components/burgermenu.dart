import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/theme.dart';

Drawer burgerMenu(BuildContext context, PageController pageNav) {

  void pages(int page) {
    pageNav.jumpToPage(page);
    Navigator.pop(context);
  }

  return Drawer(
    backgroundColor: lightGreen.withOpacity(0.9),
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const SizedBox(
          height: 50.0,
        ),
        ListTile(
          title: Text(
            'home',
            style: burgerMenuTextStyle,
          ),
          onTap: () {
            pages(0);
            // pageNav.jumpToPage(1);
            // Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text(
            'my projects',
            style: burgerMenuTextStyle,
          ),
          onTap: () {
            pages(1);
            // pageNav.jumpToPage(1);
            // Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text(
              'my skills', style: burgerMenuTextStyle),
          onTap: () {
            pages(2);
          },
        ),
        ListTile(
          title: Text(
              'CV', style: burgerMenuTextStyle),
          onTap: () {
            pages(3);
          },
        ),
        ListTile(
          title: Text(
              'contact me', style: burgerMenuTextStyle),
          onTap: () {
            pageNav.jumpToPage(1);
          },
        ),
], )
  );
}