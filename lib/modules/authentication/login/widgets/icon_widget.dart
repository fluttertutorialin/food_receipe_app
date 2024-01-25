import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

Widget iconsWidget(Brand data) {
  return Container(
    width: 44,
    height: 44,
    decoration: ShapeDecoration(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      shadows: const [
        BoxShadow(
          color: Color(0x19696969),
          blurRadius: 5,
          offset: Offset(0, 0),
          spreadRadius: 3,
        )
      ],
    ),
    child: data,
  );
}
