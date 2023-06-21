import 'package:flutter/material.dart';
import 'main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      initialRoute: '/home',
      routes: {
        '/home': (context) => MainPage(),
        // '/about': (context) => Screen1(),
        // '/project': (context) => Screen2(),
        // '/contact': (context) => Screen2(),
      },
    );
  }
}
