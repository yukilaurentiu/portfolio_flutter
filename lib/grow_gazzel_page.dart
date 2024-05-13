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

class GrowGuzzlePage extends StatefulWidget {
  const GrowGuzzlePage(this.pageNav, {super.key});
  final PageController pageNav;

  @override
  State<GrowGuzzlePage> createState() => _GrowGuzzlePageState();
}

class _GrowGuzzlePageState extends State<GrowGuzzlePage> {
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
      backgroundColor: lavender,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:15.0),
                child: Text(
                  '',
                ),
              ),
              const SizedBox(height: 30),
              ProjectsCard(
                onPress: () => _launchUrl(Uri.parse(urls[0]['travel'])),
                image: const AssetImage('images/travelmap-logo.png'),
                title: 'Grow Guzzle',
                paragraph: growGuzzle,
                titleColor: textLavender,
                pColor: darkLavender,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        techIconStyle(Icon(DevIcons.flutterPlain), yellow),
                        techIconStyle(Icon(DevIcons.dartPlainWordmark), green),
                        // techIconStyle(Icon(DevIcons.googlecloudPlain), yellow),
                      ],
                    ),
                    SizedBox(height: 30),
                    BtnStyle(onPress: () => _launchUrl(Uri.parse(urls[0]['travel'])), btnColor: darkLavender, text: 'view case study',),
                    SizedBox(height: 30),
                    downBtn(backgroundColor: darkGreen,textColor: Colors.white, onPressed: ()=> widget.pageNav.jumpToPage(3)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
