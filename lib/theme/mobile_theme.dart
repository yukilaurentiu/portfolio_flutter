import 'package:flutter/material.dart';
import 'package:portfolio_flutter/theme/theme.dart';

ThemeData mobileTheme() {
  return ThemeData(
    textTheme: const TextTheme(
      titleSmall: TextStyle(
        color: textGreenColor,
        fontSize: 18.0,
        height: 1.3,
      ),
      titleMedium: TextStyle(
        color: textGreenColor,
        fontSize: 28.0,
        height: 1.1,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: TextStyle(
        color: textGreenColor,
        fontSize: 40.0,
        height: 1.1,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

const burgerMenuTextStyle = TextStyle(
  fontSize: 24.0,
  fontWeight: FontWeight.w300,
  color: textGreenColor,
);


const navMenuColor = Colors.teal;
