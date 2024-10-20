import 'package:flutter/material.dart';
import 'package:portfolio_flutter/portofolio.dart';
import 'package:portfolio_flutter/theme/desktop_theme.dart';
import 'package:portfolio_flutter/theme/mobile_theme.dart';
import 'components/translation.dart';

import 'layouts/layout.dart';
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
    return ResponsiveLayout(
      layoutBuilder: (layout) {
        return MaterialApp(
          theme: _getThemeForLayout(layout), // Pass the layout to get the correct theme
          home: Portfolio(layout: layout, updateLan: updateLan),
        );
      },
    );
  }

// Function to get the appropriate theme based on the layout
  ThemeData _getThemeForLayout(String layout) {
    if (layout == Layout.desktop) {
      return desktopTheme();
    } else {
      return mobileTheme();
    }
  }

}
