import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//color
const textGreenColor = Color(0xff0e544c);
const lightGreen = Color(0xffa9d2c5);
const darkGreen = Color(0xff247d67);
const textPinkColor = Color(0xff5d2e2e);
const lightPink = Color(0xffffe5e5);
const darkPink = Color(0xffb86f6f);
const yellow = Color(0xffd9e646);
const lavender = Color(0xffdfccfb);
const darkLavender = Color(0xff8c76ac);

//theme
ThemeData myTheme() {
  return ThemeData(
    fontFamily: GoogleFonts.quicksand().fontFamily,
    textTheme: const TextTheme(
    bodyLarge: TextStyle(
    color: textGreenColor,
    fontSize: 50.0,
    height: 1.1,
    )));}


const navMenuColor = Colors.teal;