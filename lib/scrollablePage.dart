import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/theme.dart';

import 'components/burgermenu.dart';
import 'home.dart';

class ScrollablePage extends StatefulWidget {
  const ScrollablePage({super.key});

  @override
  State<ScrollablePage> createState() => _ScrollablePageState();
}

class _ScrollablePageState extends State<ScrollablePage> {
  final pageNav = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          title: Text('Yukiko Lanrentiu',
              style: Theme.of(context).textTheme.titleMedium,),
          backgroundColor: lightGreen,
          iconTheme: IconThemeData(size: 44, color: textGreenColor),
          elevation: 0,
        ),
      ),
      body: PageView(
        controller: pageNav,
        scrollDirection: Axis.vertical,
        children: [
          Home(pageNav),
        ],
      ),
      drawer: burgerMenu(context, pageNav),
    );
  }
}
