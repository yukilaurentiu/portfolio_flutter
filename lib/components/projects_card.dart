import 'package:flutter/material.dart';

class ProjectsCard extends StatelessWidget {
  const ProjectsCard(
      {required this.onPress,
      required this.image,
      required this.title,
      super.key});
  final VoidCallback? onPress;
  final String title;
  final AssetImage image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Row(
        children: [
          const SizedBox(width: 15.0),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image(
                image: image,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
