import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/paragraph.dart';
import 'package:portfolio_flutter/theme/theme.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:dev_icons/dev_icons.dart';
import 'package:portfolio_flutter/components/tech_icon.dart';
import 'components/btnStyle.dart';
import 'components/down_btn.dart';
import 'components/projects_card.dart';
import 'components/translation.dart';

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
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(color: textPinkColor),
                ),
              ),
              const SizedBox(height: 30),
              ProjectsCard(
                onPress: () => _launchUrl(Uri.parse(urls[0]['travel'])),
                image: const AssetImage('images/travelmap-logo.png'),
                title: 'Travel Map',
                paragraph: t('travel-p'),
                titleColor: textPinkColor,
                pColor: darkPink,
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
                  BtnStyle(onPress: () => _launchUrl(Uri.parse(urls[0]['travel'])), btnColor: darkPink,text: t('project-bnt')),
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
