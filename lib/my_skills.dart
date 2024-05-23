import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/btnStyle.dart';
import 'package:portfolio_flutter/components/paragraph.dart';
import 'package:portfolio_flutter/theme.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:dev_icons/dev_icons.dart';
import 'package:portfolio_flutter/components/tech_icon.dart';
import 'components/down_btn.dart';
import 'components/projects_card.dart';
import 'components/skills_style.dart';
import 'components/translation.dart';

class MySkills extends StatefulWidget {
  const MySkills(this.pageNav, {super.key});
  final PageController pageNav;

  @override
  State<MySkills> createState() => _MySkillsState();
}

class _MySkillsState extends State<MySkills> {
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
      backgroundColor: backGreen,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(
                  t('skill'),
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  t('skill1'),
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white),
                ),
              ),
              skillStyle('Ruby on Rails', context),
              skillStyle('Dart', context),
              skillStyle('JavaScript(ES6)', context),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  t('skill2'),
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white),
                ),
              ),
              skillStyle('Flutter', context),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  t('skill3'),
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white),
                ),
              ),
              skillStyle('HTML/CSS(SASS)', context),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  t('skill4'),
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white),
                ),
              ),
              skillStyle('Git/GitHub', context),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  t('skill5'),
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: Colors.white,
                  fontSize: 26),
                ),
              ),
              skillStyle('Linux/macOS', context),
              const SizedBox(height: 30),
              // downBtn(
              //     backgroundColor: darkGreen,
              //     textColor: Colors.white,
              //     onPressed: () => widget.pageNav.jumpToPage(4)),
            ],
          ),
        ),
      ),
    );
  }
}
