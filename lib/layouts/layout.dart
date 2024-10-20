import 'package:flutter/material.dart';

class Layout {
  static String mobile = 'mobile';
  static String desktop = 'desktop';

  static String layout = 'mobile';

  static void setLayout(BuildContext context) {
    var mediaSize = MediaQuery.of(context).size;
    double screenWidth = mediaSize.width;

    if (screenWidth < 600) {
      layout = mobile;
    } else {
      layout = desktop;
    }
  }

  static String getLayout() {
    return layout;
  }
}
