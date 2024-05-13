import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../theme.dart';

class ProjectsCard extends StatelessWidget {
  const ProjectsCard(
      {required this.onPress,
      required this.image,
      required this.title,
      required this.paragraph,
      required this.titleColor,
      required this.pColor,
      super.key});
  final VoidCallback? onPress;
  final String title;
  final String paragraph;
  final AssetImage image;
  final Color titleColor;
  final Color pColor;


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Container(
          width: 80,
          height: 80,
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
          padding: const EdgeInsets.all(20.0),
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                 color: titleColor, fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          textAlign: TextAlign.center,
          paragraph,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: pColor,
              ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
