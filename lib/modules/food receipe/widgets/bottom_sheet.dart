import 'package:flutter/material.dart';
import 'package:food_receipe_app/configs/constants/color_constants.dart';
import 'package:food_receipe_app/configs/extensions/buildcontext_extensions.dart';
import 'package:food_receipe_app/core/core_widgets/core_text.dart';
import 'package:food_receipe_app/core/core_widgets/custom_elevated_button.dart';
import 'package:food_receipe_app/core/core_widgets/spaces.dart';
import 'package:food_receipe_app/modules/food%20receipe/widgets/category_list.dart';
import 'package:food_receipe_app/modules/food%20receipe/widgets/rate_list.dart';
import 'package:food_receipe_app/modules/food%20receipe/widgets/time_list.dart';

void filterBottomSheet(BuildContext context) {
  showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: ColorConstants.whiteColor,
      context: context,
      builder: (BuildContext bc) {
        return SizedBox(
            height: context.screenHeight * 0.68,
            width: context.screenWidth,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: customTextWidget(
                        text: 'Filter Search',
                        fontWeight: FontWeight.w600,
                        color: ColorConstants.blackColor,
                        fontSize: 16),
                  ),
                  Spaces.mid,
                  customTextWidget(
                      text: 'Time',
                      fontWeight: FontWeight.w600,
                      color: ColorConstants.blackColor,
                      fontSize: 16),
                  Spaces.mid,
                  const TimeList(),
                  Spaces.mid,
                  customTextWidget(
                      text: 'Rate',
                      fontWeight: FontWeight.w600,
                      color: ColorConstants.blackColor,
                      fontSize: 16),
                  Spaces.mid,
                  const RateList(),
                  Spaces.mid,
                  customTextWidget(
                      text: 'Category',
                      fontWeight: FontWeight.w600,
                      color: ColorConstants.blackColor,
                      fontSize: 16),
                  Spaces.mid,
                  const CategoryList(),
                  Spaces.large,
                  Align(
                    alignment: Alignment.center,
                    child: customElevatedBtnWidget(
                        width: 140,
                        height: 40,
                        child: Center(
                          child: customTextWidget(
                              text: 'Filter',
                              color: ColorConstants.whiteColor,
                              fontNameP: 'Poppins',
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        func: () {
                          Navigator.pop(context);
                        }),
                  )
                ],
              ),
            ));
      });
}
