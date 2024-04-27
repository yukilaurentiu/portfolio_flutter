import 'package:flutter/material.dart';
import 'package:portfolio_flutter/theme.dart';
import 'package:portfolio_flutter/scrollable.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme(),
      home: const Directionality(textDirection: TextDirection.ltr,
          child: scrollable()),);
      // initialRoute: 'home',
      // routes: {
      //   'home': (context) => Home(),
      //   // '/about': (context) => Screen1(),
      //   // '/project': (context) => Screen2(),
      //   // '/contact': (context) => Screen2(),
      // },

  }
}
