import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class Projects extends StatefulWidget {
  const Projects(this.pageNav, {super.key});
  final PageController pageNav;

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          children: [
            Text('My Projects', style: Theme.of(context).textTheme.titleLarge?.copyWith(color: textPinkColor),)
          ],
        ),
      ),
    );
  }
}
