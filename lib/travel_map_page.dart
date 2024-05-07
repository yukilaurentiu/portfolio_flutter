import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/paragraph.dart';
import 'package:portfolio_flutter/theme.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:dev_icons/dev_icons.dart';
import 'package:portfolio_flutter/components/tech_icon.dart';
import 'components/projects_card.dart';

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
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        techIconStyle(Icon(DevIcons.rubyPlain), yellow),
                        techIconStyle(Icon(DevIcons.railsPlain), green),
                        techIconStyle(Icon(DevIcons.javascriptPlain), yellow),
                        techIconStyle(Icon(DevIcons.html5Plain), green),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        techIconStyle(Icon(DevIcons.css3Plain), green),
                        techIconStyle(Icon(DevIcons.bootstrapPlain), yellow),
                        techIconStyle(Icon(DevIcons.googlecloudPlain), green),
                      ],
                    ),
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
