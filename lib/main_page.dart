import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/nav_menubutton.dart';
import 'section_card.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: <Widget>[
            Row(
              children: [
                NavMenuButton(onPress: (){ Navigator.pushNamed(context, '/home');}, menuText: 'Home'),

                  ],),
              ],
            ),
        body: const Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: SectionCard(),
            ),
          ],
        ));
  }
}
