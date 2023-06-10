import 'package:flutter/material.dart';

Widget subjectItems(String subjectPic, VoidCallback onTap) {
  return Expanded(
    child: GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: Colors.grey[200],
          width: 200,
          height: 200,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(subjectPic),
          ),
        ),
      ),
    ),
  );
}
