import 'package:flutter/material.dart';
import 'package:portfolio_flutter/translate/translation.dart';
import '../theme/color.dart';
import 'nav_menubutton.dart';

PreferredSizeWidget navBar(
    BuildContext context, PageController pageNav, Function(String) updateLan) {
  void pages(int page) {
    pageNav.jumpToPage(page);
    Navigator.pop(context);
  }

  return AppBar(
    actions: <Widget>[
      Row(
        children: [
          NavMenuButton(
            onPress: () {
              pages(0);
            },
            menuText: t('home'),
          ),
          SizedBox(
            width: 10.0,
          ),
          NavMenuButton(
            onPress: () {
              pages(1);
            },
            menuText: t('b-p1'),
          ),
          SizedBox(
            width: 10.0,
          ),
          NavMenuButton(
            onPress: () {
              pages(2);
            },
            menuText: t('b-p2'),
          ),
          SizedBox(
            width: 10.0,
          ),
          NavMenuButton(
            onPress: () {
              pages(3);
            },
            menuText: t('b-s'),
          ),
          SizedBox(
            width: 10.0,
          ),
          NavMenuButton(
            onPress: () {
              pages(4);
            },
            menuText: t('contact'),
          ),
          SizedBox(
            width: 10.0,
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10),
              child: PopupMenuButton<int>(
                icon: const Icon(
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
                      children: <Widget>[Text("🇬🇧English")],
                    ),
                  ),
                  // PopupMenuItem 2
                  const PopupMenuItem(
                    value: 2,
                    // row with two children
                    child: Row(
                      children: [Text("🇯🇵日本語")],
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
      ),
    ],
  );
}
