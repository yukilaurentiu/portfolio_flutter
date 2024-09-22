import 'package:flutter/material.dart';
import '../theme/theme.dart';

class NavMenuButton extends StatelessWidget {
  NavMenuButton({required this.onPress, required this.menuText, this.color = navMenuColor, super.key});

  final String menuText;
  final VoidCallback? onPress;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Text(menuText, style: TextStyle(color: color)),

    );
  }
}
