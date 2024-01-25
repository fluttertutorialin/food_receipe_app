import 'package:flutter/material.dart';
import 'package:food_receipe_app/core/core_widgets/core_text.dart';
import 'package:food_receipe_app/core/core_widgets/spaces.dart';

Widget profileText(String title, String value) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    children: [
      customTextWidget(
          text: title,
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: const Color(0xFFA9A9A9)),
      Spaces.extrasmall,
      customTextWidget(
        text: value,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      )
    ],
  );
}
