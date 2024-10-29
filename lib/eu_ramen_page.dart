import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/paragraph.dart';
import 'package:portfolio_flutter/theme/color.dart';
import 'package:portfolio_flutter/theme/theme.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:dev_icons/dev_icons.dart';
import 'package:portfolio_flutter/components/tech_icon.dart';
import 'components/btnStyle.dart';
import 'components/down_btn.dart';
import 'components/projects_card.dart';
import 'translate/translation.dart';

class EuRamenPage extends StatefulWidget {
  const EuRamenPage(this.pageNav, {super.key});
  final PageController pageNav;

  @override
  State<EuRamenPage> createState() => _EuRamenPageState();
}

class _EuRamenPageState extends State<EuRamenPage> {
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
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:20.0, bottom: 10),
                child: Text(
                  t('project'),
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(color: textLavender),
                ),
              ),
              const SizedBox(height: 30),
              ProjectsCard(
                onPress: () => _launchUrl(Uri.parse(urls[0]['euramen'])),
                image: const AssetImage('images/ramen_logo.png'),
                title: "EU Ramen",
                paragraph: t('eu-p'),
                titleColor: textLavender,
                pColor: darkLavender,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      techIconStyle(Icon(DevIcons.javascriptPlain), yellow),
                      techIconStyle(Icon(DevIcons.html5PlainWordmark), green),
                      techIconStyle(Icon(DevIcons.reactOriginal), yellow),
                      techIconStyle(Icon(DevIcons.css3PlainWordmark), green),
                      techIconStyle(Icon(DevIcons.githubOriginal), yellow),
                    ],
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     techIconStyle(Icon(DevIcons.css3PlainWordmark), yellow),
                  //     techIconStyle(Icon(DevIcons.googlecloudPlain), green),
                  //   ],
                  // ),
                  SizedBox(height: 50),
                  BtnStyle(onPress: () => _launchUrl(Uri.parse(urls[0]['euramen'])), btnColor: darkPink,text: t('project-bnt')),
                  SizedBox(height: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
