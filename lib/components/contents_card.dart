import 'package:flutter/material.dart';

class ContentsCard extends StatelessWidget {
  const ContentsCard({required this.onPress, super.key});
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
    );
  }
}
