import 'package:flutter/material.dart';
import 'package:portfolio_flutter/theme.dart';

const skillText = TextStyle(
  color: textLight,
  fontWeight: FontWeight.w500,
);

Widget skillStyle(String text, context) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Text(
      text,
      style: Theme.of(context).textTheme.titleSmall?.merge(skillText),
    ),
  );
}
