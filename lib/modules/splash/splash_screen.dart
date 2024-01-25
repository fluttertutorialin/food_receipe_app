import 'package:flutter/material.dart';
import 'package:food_receipe_app/configs/constants/assets_configs/assets_constants.dart';
import 'package:food_receipe_app/configs/constants/color_constants.dart';
import 'package:food_receipe_app/configs/extensions/buildcontext_extensions.dart';
import 'package:food_receipe_app/core/core_widgets/core_text.dart';
import 'package:food_receipe_app/core/core_widgets/custom_elevated_button.dart';
import 'package:food_receipe_app/core/core_widgets/spaces.dart';
import 'package:food_receipe_app/modules/authentication/login/login_screen.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: context.screenHeight,
        width: context.screenWidth,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  ImagesString.background_image,
                ),
                fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spaces.large,
              Spaces.smallh,
              Image.asset(IconsString.kitchen_cap),
              Spaces.mid,
              customTextWidget(
                  text: '100K+ Premium Recipe',
                  color: ColorConstants.whiteColor,
                  fontNameP: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
              SizedBox(
                height: context.screenHeight * 0.3,
              ),
              customTextWidget(
                  text: 'Get\nCooking',
                  color: ColorConstants.whiteColor,
                  fontNameP: 'Poppins',
                  textAlign: TextAlign.center,
                  lineHeight: 1.3,
                  fontSize: 50,
                  fontWeight: FontWeight.w600),
              Spaces.mid,
              customTextWidget(
                  text: 'Simple way to find Tasty Recipe',
                  color: ColorConstants.whiteColor,
                  fontNameP: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
              Spaces.large,
              Spaces.mid,
              customElevatedBtnWidget(
                  width: context.screenWidth * 0.65,
                  height: 60,
                  child: Center(
                    child: SizedBox(
                      width: 160,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customTextWidget(
                              text: 'Start Cooking',
                              color: ColorConstants.whiteColor,
                              fontNameP: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                          const Icon(
                            Icons.arrow_forward,
                            color: ColorConstants.whiteColor,
                            size: 25,
                          )
                        ],
                      ),
                    ),
                  ),
                  func: () {
                    context.pushScreenTo(LoginPage());
                  })
            ],
          ),
        ));
  }
}
