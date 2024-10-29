import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/paragraph.dart';
import 'package:portfolio_flutter/theme/color.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:dev_icons/dev_icons.dart';
import 'package:portfolio_flutter/components/tech_icon.dart';
import 'components/btnStyle.dart';
import 'components/projects_card.dart';
import 'translate/translation.dart';

class TravelMapPage extends StatefulWidget {
  const TravelMapPage(this.pageNav, {super.key});
  final PageController pageNav;

  @override
  State<TravelMapPage> createState() => _TravelMapPageState();
}

class _TravelMapPageState extends State<TravelMapPage> {
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
        padding: const EdgeInsets.all(30.0),
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
                title: 'Travel Map',
                paragraph: t('travel-p'),
                titleColor: textLavender,
                pColor: darkLavender,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      techIconStyle(Icon(DevIcons.rubyPlainWordmark), yellow),
                      techIconStyle(Icon(DevIcons.railsPlainWordmark), green),
                      techIconStyle(Icon(DevIcons.javascriptPlain), yellow),
                      techIconStyle(Icon(DevIcons.html5PlainWordmark), green),
                      techIconStyle(Icon(DevIcons.css3PlainWordmark), yellow),
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
                  BtnStyle(onPress: () => _launchUrl(Uri.parse(urls[0]['travel'])), btnColor: darkLavender,text: t('project-bnt')),
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
