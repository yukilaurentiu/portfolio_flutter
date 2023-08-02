import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

BottomNavigationBar footer(BuildContext context){

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      // Handle error if the URL can't be launched
      print("Could not launch $url");
    }
  }

  return BottomNavigationBar(type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: 0,

    items: <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.linkedin),
      label: 'Linkedin',

    ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.github),
          label: 'github',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.envelope),
          label: 'Email',
        ),
  ],onTap: (index) {
      // Define the URLs you want to open for each icon
      List<String> urls = [
        'https://www.linkedin.com/in/yukikolaurentiu/',
        'https://github.com/yukilaurentiu',
        'mailto:example@example.com',
      ];

      _launchURL(urls[index]);
    },

  );
}


// In this code, the _launchURL function uses url_launcher to open the URL provided. The onTap callback of the BottomNavigationBar is set to call _launchURL with the corresponding URL when an icon is tapped.
// Remember to replace the placeholder URLs with your actual URLs for LinkedIn, GitHub, and email.
// Now, when you tap on each icon, it should open the corresponding URL in the device's default web browser.