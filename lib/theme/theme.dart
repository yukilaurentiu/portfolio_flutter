import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//color
const textGreenColor = Color(0xff0e544c);
const textLight = Color(0xfff8fdfb);
const lightGreen = Color(0xffa9d2c5);
const darkGreen = Color(0xff247d67);
const backGreen = Color(0xff5da28c);
const textPinkColor = Color(0xff5d2e2e);
const lightPink = Color(0xffffe5e5);
const darkPink = Color(0xffb86f6f);
const yellow = Color(0xffd9e646);
const green = Color(0xff8bccc1);
const lavender = Color(0xffe8e0fa);
const darkLavender = Color(0xff8c76ac);
const textLavender = Color(0xff583f7d);

//theme
ThemeData mainTheme() {
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
