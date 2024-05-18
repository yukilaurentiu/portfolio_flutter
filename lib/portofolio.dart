import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/contact.dart';
import 'package:portfolio_flutter/grow_gazzel_page.dart';
import 'package:portfolio_flutter/my_skills.dart';
import 'package:portfolio_flutter/travel_map_page.dart';
import 'package:portfolio_flutter/theme.dart';

import 'components/burgermenu.dart';
import 'components/translation.dart';
import 'home.dart';

class Portfolio extends StatefulWidget {
  final void Function(String) updateLan;
   const Portfolio({required this.updateLan, super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  final pageNav = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          title: Text(
            'Yukiko Laurentiu',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 21),
          ),
          backgroundColor: lightGreen,
          iconTheme: const IconThemeData(size: 44, color: textGreenColor),
          elevation: 0,
          actions: [
            PopupMenuButton<int>(
              icon:Icon(
                Icons.g_translate,
                size: 25,
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
                if (value == 1) {
                 widget.updateLan('en');
                } else if (value == 2) {
                  widget.updateLan('jp');
                }
              },
            ),
          ],
        ),

      ),
      body: PageView(
        controller: pageNav,
        scrollDirection: Axis.vertical,
        children: [
          Home(pageNav),
          TravelMapPage(pageNav),
          GrowGuzzlePage(pageNav),
          MySkills(pageNav),
          Contact(pageNav),
        ],
      ),
      drawer: burgerMenu(context, pageNav),
    );
  }
}
