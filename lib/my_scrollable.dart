import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/grow_gazzel_page.dart';
import 'package:portfolio_flutter/my_skills.dart';
import 'package:portfolio_flutter/travel_map_page.dart';
import 'package:portfolio_flutter/theme.dart';

import 'components/burgermenu.dart';
import 'home.dart';

class MyScrollable extends StatefulWidget {
  const MyScrollable({super.key});

  @override
  State<MyScrollable> createState() => _MyScrollableState();
}

class _MyScrollableState extends State<MyScrollable> {
  final pageNav = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          title: Text(
            'Yukiko Laurentiu',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 21),
          ),
          backgroundColor: lightGreen,
          iconTheme: IconThemeData(size: 44),
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
        ],
      ),
      drawer: burgerMenu(context, pageNav),
    );
  }
}
