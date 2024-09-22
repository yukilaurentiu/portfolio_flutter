import 'package:flutter/material.dart';

class Layout {
  static String layout = 'mobile';

  static void setLayout(BuildContext context) {
    var mediaSize = MediaQuery.of(context).size;
    double screenWidth = mediaSize.width;

    if (screenWidth < 600) {
      layout = 'mobile';
    } else {
      layout = 'laptop';
    }
  }

  static String getLayout() {
    return layout;
  }
}
