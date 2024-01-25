import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_receipe_app/configs/constants/color_constants.dart';
import 'package:food_receipe_app/configs/extensions/buildcontext_extensions.dart';
import 'package:food_receipe_app/core/core_widgets/widget_links.dart';

Future ratingDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            height: context.screenHeight * 0.22,
            width: context.screenWidth,
            decoration: const BoxDecoration(
                color: ColorConstants.whiteColor,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customTextWidget(
                      text: 'Rate recipe',
                      fontSize: 18,
                      color: ColorConstants.blackColor,
                      fontWeight: FontWeight.w400),
                  Spaces.mid,
                  RatingBar.builder(
                    unratedColor: Colors.grey[200],
                    initialRating: 0.0,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 35,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 10),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {},
                  ),
                  Spaces.mid,
                  customElevatedBtnWidget(
                      height: 38,
                      bgColor: Colors.amber,
                      child: customTextWidget(
                          text: 'Send',
                          fontSize: 16,
                          color: ColorConstants.whiteColor,
                          fontWeight: FontWeight.w400),
                      func: () {
                        Navigator.of(context).pop();
                      })
                ],
              ),
            ),
          ),
        );
      });
}
