import 'package:flutter/material.dart';
import 'package:portfolio_flutter/theme.dart';
import 'package:portfolio_flutter/portofolio.dart';
import 'package:flutter_localization/flutter_localization.dart';

import 'components/app_localizations.dart';
import 'components/translation.dart';

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
      theme: myTheme(),
      home: Portfolio(updateLan: updateLan),
    );
  }
}
