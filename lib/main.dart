import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/theme.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme(),
      initialRoute: 'home',
      routes: {
        'home': (context) => const Home(),
        // '/about': (context) => Screen1(),
        // '/project': (context) => Screen2(),
        // '/contact': (context) => Screen2(),
      },
    );
  }
}
