import 'package:flutter/material.dart';
import 'package:food_receipe_app/configs/extensions/buildcontext_extensions.dart';
import 'package:food_receipe_app/core/core_widgets/core_text.dart';

class TopRating extends StatelessWidget {
  final double? top;
  final double? right;
  final double? width;
  final double? height;
  final double? starSize;
  final double? fontSize;
  const TopRating(
      {super.key,
      this.top,
      this.right,
      this.width,
      this.height,
      this.starSize,
      this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top ?? 10,
        right: right ?? 10,
        child: Container(
          width: width ?? context.screenWidth * 0.12,
          height: height ?? 22,
          padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
          decoration: ShapeDecoration(
            color: const Color(0xFFFFE1B3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  clipBehavior: Clip.none,
                  child: Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: starSize ?? 10,
                  )),
              const SizedBox(width: 3),
              customTextWidget(
                  text: '4.0',
                  fontWeight: FontWeight.w600,
                  textAlign: TextAlign.right,
                  fontSize: fontSize ?? 10.0),
            ],
          ),
        ));
  }
}
