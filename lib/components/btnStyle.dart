import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BtnStyle extends StatelessWidget {
  const BtnStyle({
    required this.onPress,
    required this.btnColor,
    required this.text,
    super.key,
  });
  final Color btnColor;
  final VoidCallback? onPress;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        backgroundColor: btnColor,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
              color: Colors.white,
          fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
