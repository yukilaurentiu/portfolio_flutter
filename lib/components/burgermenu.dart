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
              'my project 1',
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
              'my project 2',
              style: burgerMenuTextStyle,
            ),
            onTap: () {
              pages(2);
              // pageNav.jumpToPage(1);
              // Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('my skills', style: burgerMenuTextStyle),
            onTap: () {
              pages(3);
            },
          ),
          ListTile(
            title: Text('contact me', style: burgerMenuTextStyle),
            onTap: () {
              pages(4);
            },
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10),
              child: PopupMenuButton<int>(
                icon:Icon(
                  Icons.g_translate,
                  size: 35,
                  color: textGreenColor,
                ),
                color: lightPink,
                itemBuilder: (context) => [
                  // PopupMenuItem 1
                  const PopupMenuItem(
                    value: 1,
                    // row with 2 children
                    child: Row(
                      children: <Widget>[
                        Text("🇬🇧English")
                      ],
                    ),
                  ),
                  // PopupMenuItem 2
                  const PopupMenuItem(
                    value: 2,
                    // row with two children
                    child: Row(
                      children: [
                        Text("🇯🇵日本語")
                      ],
                    ),
                  ),
                ],
                elevation: 2,
                // onSelected: () {
                // if (value == 1) {
                //   appLanguage.changeLanguage(const Locale("en"));
                // } else if (value == 2) {
                //   appLanguage.changeLanguage(const Locale("ne"));
                // }
                // },
              ),
            ),
          ]),
        ],
      ));
}
