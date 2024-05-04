import 'package:flutter/material.dart';
import 'package:portfolio_flutter/theme.dart';
import 'package:portfolio_flutter/my_scrollable.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme(),
      home: const MyScrollable(),
    );
      // initialRoute: 'home',
      // routes: {
      //   'home': (context) => Home(),
      //   // '/about': (context) => Screen1(),
      //   // '/project': (context) => Screen2(),
      //   // '/contact': (context) => Screen2(),
      // },

  }
}
