
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget downBtn(Color color) {
  return Container(
    width: 60, // Adjust width to create a square
    height: 60, // Adjust height to create a square
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
    ),
    child: ElevatedButton(
      onPressed: (){},
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero, // Remove default padding
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Adjust border radius as needed
        ),
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0.7),
      ),
      child: Icon(Icons.expand_more, size: 50, color: color,), // Adjust icon size and color
    ),
  );
}


