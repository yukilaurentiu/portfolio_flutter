import 'package:flutter/material.dart';
import 'layout.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget Function(String layout) layoutBuilder;

  ResponsiveLayout({required this.layoutBuilder});

  @override
  Widget build(BuildContext context) {
    Layout.setLayout(context);
    return layoutBuilder(Layout.getLayout());
  }
}
