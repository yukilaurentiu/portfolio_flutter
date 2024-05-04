

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
          title: Text('Yukiko Laurentiu',style: Theme.of(context).textTheme.titleMedium,),
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
