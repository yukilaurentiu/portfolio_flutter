import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'color.dart';


ThemeData mobileTheme() {
  return ThemeData(
    fontFamily: GoogleFonts.quicksand().fontFamily,
    textTheme: const TextTheme(
      titleSmall: TextStyle(
        color: textGreenColor,
        fontSize: 18.0,
        height: 1.3,
      ),
      titleMedium: TextStyle(
        color: textGreenColor,
        fontSize: 23.0,
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

