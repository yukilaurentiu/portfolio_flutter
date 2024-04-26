

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/theme.dart';

import 'components/burgermenu.dart';
import 'home.dart';

class scrollable extends StatefulWidget {
  const scrollable({super.key});

  @override
  State<scrollable> createState() => _scrollableState();
}

class _scrollableState extends State<scrollable> {
  final pageNav = PageController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          title: Text('Lanrentiu Yukiko'),
          backgroundColor: lightGreen,
          iconTheme: IconThemeData(size: 44),
          elevation: 0,
        ),
      ),
      body:
      PageView(
        controller: pageNav,
        scrollDirection: Axis.horizontal,
        children: [
          Home(pageNav),
        ],
      ),
      drawer: burgerMenu(context, pageNav),
    );

  }
}
