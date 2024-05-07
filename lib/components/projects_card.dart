import 'package:dev_icons/dev_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/components/tech_icon.dart';

import '../theme.dart';

class ProjectsCard extends StatelessWidget {
  const ProjectsCard(
      {required this.onPress,
      required this.image,
      required this.title,
      required this.paragraph,
      CircleAvatar? icon,
      super.key});
  final VoidCallback? onPress;
  final String title;
  final String paragraph;
  final AssetImage image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Column(
        children: [
          Center(
              child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(10.0), // Adjust the radius as needed
              image: DecorationImage(
                image: image,
                fit: BoxFit.cover, // Adjust the fit based on your needs
              ),
            ),
          )),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              title,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontSize: 25,
                  color: textPinkColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            textAlign: TextAlign.center,
            paragraph,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(color: darkPink,height: 1.5,),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
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
          )
        ],
      ),
    );
  }
}
