import 'package:flutter/material.dart';

import '../theme/color.dart';

class NavMobile extends StatelessWidget {
  final void Function(String) updateLan;

  const NavMobile({required this.updateLan, super.key});

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      title: Text(
        'Yukiko Laurentiu',
        style:
        Theme.of(context).textTheme.titleMedium?.copyWith(fontSize: 21),
      ),
      backgroundColor: lightGreen,
      iconTheme: const IconThemeData(size: 44, color: textGreenColor),
      elevation: 0,
      actions: [
        PopupMenuButton<int>(
          icon: const Icon(
            Icons.g_translate,
            size: 25,
            color: textGreenColor,
          ),
          color: lightPink,
          itemBuilder: (context) => [
            // PopupMenuItem 1
            const PopupMenuItem(
              value: 1,
              // row with 2 children
              child: Row(
                children: <Widget>[Text("🇬🇧English")],
              ),
            ),
            // PopupMenuItem 2
            const PopupMenuItem(
              value: 2,
              // row with two children
              child: Row(
                children: [Text("🇯🇵日本語")],
              ),
            ),
          ],
          elevation: 2,
          onSelected: (value) {
            switch (value) {
              case 1:
                updateLan('en');
                break;
              case 2:
                updateLan('jp');
                break;
            }
          },
        ),
      ],
    );
  }
}
