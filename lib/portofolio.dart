import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/contact.dart';
import 'package:portfolio_flutter/grow_gazzel_page.dart';
import 'package:portfolio_flutter/my_skills.dart';
import 'package:portfolio_flutter/travel_map_page.dart';
import 'package:portfolio_flutter/theme.dart';

import 'components/burgermenu.dart';
import 'home.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  final pageNav = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65.0),
        child: AppBar(
          title: Text(
            'Yukiko Laurentiu',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 21),
          ),
          backgroundColor: lightGreen,
          iconTheme: const IconThemeData(size: 44),
          elevation: 0,
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
