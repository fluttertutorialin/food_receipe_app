import 'package:flutter/material.dart';
import 'package:food_receipe_app/configs/constants/color_constants.dart';
import 'package:food_receipe_app/configs/extensions/buildcontext_extensions.dart';
import 'package:food_receipe_app/core/core_widgets/core_text.dart';
import 'package:food_receipe_app/core/core_widgets/spaces.dart';
import 'package:food_receipe_app/modules/food%20receipe/widgets/top_rating.dart';

// ignore: must_be_immutable
class TopIngridentImage extends StatelessWidget {
  String img;
  TopIngridentImage({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight * 0.2,
      width: context.screenWidth,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        image: DecorationImage(image: AssetImage(img), fit: BoxFit.cover),
      ),
      child: Container(
        height: context.screenHeight * 0.2,
        width: context.screenWidth,
        decoration: ShapeDecoration(
          gradient: LinearGradient(
            begin: const Alignment(0.00, -1.00),
            end: const Alignment(0, 1),
            colors: [Colors.black.withOpacity(0), Colors.black],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Stack(
          children: [
            const TopRating(),
            Positioned(
              top: 90,
              right: 10,
              bottom: 5,
              child: SizedBox(
                height: 20,
                width: 120,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.timer_outlined,
                      size: 18,
                      color: ColorConstants.whiteColor,
                    ),
                    Spaces.smallw,
                    customTextWidget(
                        text: '20 min',
                        fontSize: 14,
                        color: ColorConstants.whiteColor,
                        fontWeight: FontWeight.w400),
                    Spaces.smallw,
                    Container(
                      width: 21,
                      height: 21,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Center(
                          child: Image.asset(
                        'assets/icons/bookmark.png',
                        height: 14,
                      )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
