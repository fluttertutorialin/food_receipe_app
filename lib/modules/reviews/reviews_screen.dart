import 'package:flutter/material.dart';
import 'package:food_receipe_app/configs/constants/color_constants.dart';
import 'package:food_receipe_app/core/core_widgets/core_text.dart';
import 'package:food_receipe_app/core/core_widgets/custom_elevated_button.dart';
import 'package:food_receipe_app/core/core_widgets/custom_field.dart';
import 'package:food_receipe_app/core/core_widgets/global_appbar.dart';
import 'package:food_receipe_app/core/core_widgets/spaces.dart';
import 'package:food_receipe_app/modules/reviews/widgets/review_list.dart';

// ignore: must_be_immutable
class ReviewsPage extends StatelessWidget {
  ReviewsPage({super.key});
  TextEditingController comment = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: GlobalAppBar(
          title: 'Reviews',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spaces.smallh,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customTextWidget(
                      text: '200 Comments',
                      color: const Color(0xFFA9A9A9),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                  customTextWidget(
                      text: '155 Saved',
                      color: const Color(0xFFA9A9A9),
                      fontSize: 14,
                      fontWeight: FontWeight.w400)
                ],
              ),
              Spaces.mid,
              customTextWidget(
                  text: 'Leave a comment',
                  color: ColorConstants.blackColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
              Spaces.smallh,
              customTextField(
                  hintText: 'Say something...',
                  controller: comment,
                  suffixIcon: customElevatedBtnWidget(
                      height: 57,
                      child: customTextWidget(
                          text: 'Send',
                          color: ColorConstants.whiteColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                      func: () async {})),
              Spaces.mid,
              const ReviewList(),
            ],
          ),
        ),
      ),
    );
  }
}
