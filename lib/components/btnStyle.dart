import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BtnStyle extends StatelessWidget {
  const BtnStyle({
    required this.onPress,
    required this.btnColor,
    super.key,
  });
  final Color btnColor;
  final VoidCallback? onPress;
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
        'view case study',
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
              color: Colors.white,
          fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
