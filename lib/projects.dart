import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/paragraph.dart';
import 'package:portfolio_flutter/theme.dart';
import 'package:url_launcher/url_launcher.dart';

import 'components/projects_card.dart';

class Projects extends StatefulWidget {
  const Projects(this.pageNav, {super.key});
  final PageController pageNav;

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  void _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      await launchUrl(url);
    } else {
      // Handle error if the URL can't be launched
      print("Could not launch $url");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightPink,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'My Projects',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(color: textPinkColor),
                ),
              ),
              const SizedBox(height: 30),
              ProjectsCard(
                onPress: () => _launchUrl(Uri.parse('https://github.com/yukilaurentiu/travelmap')),
                image: const AssetImage('images/travelmap-logo.png'),
                title: 'Travel Map',
                paragraph: travelMap,
              )
            ],
          ),
        ),
      ),
    );
  }
}
