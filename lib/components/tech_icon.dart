import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/theme.dart';

Widget techIconStyle(Widget icon, Color color) {
  return Padding(
    padding: EdgeInsets.all(8.0), // Adjust the padding as needed
    child: Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle, // Makes the container round
      ),
      child: IconTheme(
        data: const IconThemeData(
          size: 35.0,
          color: Colors.white, // Set the color for the icon
        ),
        child: icon,
      ),
    ),
  );
}