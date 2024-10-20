import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/translation.dart';
import 'package:portfolio_flutter/theme/theme.dart';

import'package:portfolio_flutter/layouts/layout.dart';
import '../theme/color.dart';
import '../theme/desktop_theme.dart';
import '../theme/mobile_theme.dart';
import 'nav.dart';

Widget burgerMenu(BuildContext context, PageController pageNav, Function(String) updateLan) {
  void pages(int page) {
    pageNav.jumpToPage(page);
    Navigator.pop(context);
  }

  // if (layout == Layout.desktop) {
  //   return navBar(context, pageNav, widget.updateLan);
  // } else {
  //   return burgerMenu(context, pageNav, widget.updateLan);
  // }
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
              t('home'),
              style: burgerMenuTextStyle,
            ),
            onTap: () {
              pages(0);
            },
          ),
          ListTile(
            title: Text(
              t('b-p1'),
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
              t('b-p2'),
              style: burgerMenuTextStyle,
            ),
            onTap: () {
              pages(2);
              // pageNav.jumpToPage(1);
              // Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(t('b-s'), style: burgerMenuTextStyle),
            onTap: () {
              pages(3);
            },
          ),
          ListTile(
            title: Text(t('contact'), style: burgerMenuTextStyle),
            onTap: () {
              pages(4);
            },
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10),
              child: PopupMenuButton<int>(
                icon:const Icon(
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
                onSelected: (value) {
                  switch (value) {
                    case 1:
                      updateLan('en');
                      break;
                    case 2:
                      updateLan('jp');
                      break;
                  }
                },
              ),
            ),
          ]),
        ],
      ));
}
