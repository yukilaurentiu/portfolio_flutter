import 'package:flutter/material.dart';
import 'package:portfolio_flutter/theme/theme.dart';
import 'package:portfolio_flutter/portofolio.dart';
import 'components/translation.dart';
import 'layouts/responsive_layout.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    L.lan = 'en';
  }

  void updateLan(String lan) {
    setState(() {
      L.lan = lan;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: mainTheme(),
      home: ResponsiveLayout(
        layoutBuilder: (layout) => Portfolio(layout: layout, updateLan: updateLan),
      ),
      // Portfolio(updateLan: updateLan),
      //
    );
  }
}
