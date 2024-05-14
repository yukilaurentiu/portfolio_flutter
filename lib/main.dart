import 'package:flutter/material.dart';
import 'package:portfolio_flutter/theme.dart';
import 'package:portfolio_flutter/portofolio.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme(),
      home: const Portfolio(),
    );
  }
}
