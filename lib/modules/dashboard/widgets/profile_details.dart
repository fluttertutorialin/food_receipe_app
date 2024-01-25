import 'package:flutter/material.dart';
import 'package:food_receipe_app/configs/extensions/buildcontext_extensions.dart';
import 'package:food_receipe_app/core/core_widgets/core_text.dart';
import 'package:food_receipe_app/core/core_widgets/spaces.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0),
      child: SizedBox(
        height: context.screenHeight * 0.062,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customTextWidget(
                    text: 'Hello Jega',
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
                Spaces.smallh,
                customTextWidget(
                    text: 'What are you cooking today?',
                    fontSize: 12,
                    color: const Color(0xFFA9A9A9),
                    fontWeight: FontWeight.w400),
              ],
            ),
            Container(
              width: 40,
              height: 40,
              decoration: const BoxDecoration(
                  color: Color(0xfff7c687),
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: Image.asset(
                'assets/icons/profile_icon.png',
                height: 7,
              ),
            )
          ],
        ),
      ),
    );
  }
}
