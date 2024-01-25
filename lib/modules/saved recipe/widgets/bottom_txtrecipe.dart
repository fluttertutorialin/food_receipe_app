import 'package:flutter/material.dart';
import 'package:food_receipe_app/configs/constants/color_constants.dart';
import 'package:food_receipe_app/core/core_widgets/core_text.dart';
import 'package:food_receipe_app/core/core_widgets/spaces.dart';

class BottomTextRecipe extends StatelessWidget {
  final String title;
  final String subTitle;
  final double width;
  const BottomTextRecipe(
      {super.key,
      required this.title,
      required this.subTitle,
      this.width = 120});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 60,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: customTextWidget(
                text: title,
                fontWeight: FontWeight.w600,
                lineHeight: 1.4,
                color: ColorConstants.whiteColor,
                textAlign: TextAlign.left,
                fontSize: 11.0),
          ),
          Spaces.smallh,
          customTextWidget(
              text: subTitle,
              fontWeight: FontWeight.w400,
              color: const Color(0xFFA9A9A9),
              textAlign: TextAlign.right,
              fontSize: 8.0),
        ],
      ),
    );
  }
}
