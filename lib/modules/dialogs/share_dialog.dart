import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_receipe_app/configs/constants/color_constants.dart';
import 'package:food_receipe_app/configs/extensions/buildcontext_extensions.dart';
import 'package:food_receipe_app/core/core_widgets/widget_links.dart';

Future shareDialog(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            height: context.screenHeight * 0.25,
            width: context.screenWidth,
            decoration: const BoxDecoration(
                color: ColorConstants.whiteColor,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  customTextWidget(
                      text: 'Recipe Link ',
                      fontSize: 22,
                      color: ColorConstants.blackColor,
                      fontWeight: FontWeight.w600),
                  Spaces.mid,
                  customTextWidget(
                      text:
                          'Copy recipe link and share your recipe link with  friends and family.',
                      fontSize: 14,
                      color: const Color(0xFF797979),
                      fontWeight: FontWeight.w400),
                  Spaces.mid,
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 55,
                    width: context.screenWidth,
                    decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9).withOpacity(0.5),
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customTextWidget(
                              textAlign: TextAlign.left,
                              text: 'app.Recipe.co/jollof_rice',
                              color: ColorConstants.blackColor,
                              fontSize: 11,
                              fontWeight: FontWeight.w500),
                          customElevatedBtnWidget(
                              height: 55,
                              child: customTextWidget(
                                  text: 'Copy Link',
                                  color: ColorConstants.whiteColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                              func: () async {
                                await Clipboard.setData(const ClipboardData(
                                    text: "app.Recipe.co/jollof_rice"));
                                // ignore: use_build_context_synchronously
                                Navigator.of(context).pop();
                              })
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      });
}
