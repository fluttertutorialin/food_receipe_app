import 'package:flutter/material.dart';
import 'package:food_receipe_app/configs/constants/color_constants.dart';
import 'package:food_receipe_app/configs/extensions/buildcontext_extensions.dart';
import 'package:food_receipe_app/core/core_widgets/widget_links.dart';
import 'package:food_receipe_app/modules/dialogs/rating_dialog.dart';
import 'package:food_receipe_app/modules/dialogs/share_dialog.dart';
import 'package:food_receipe_app/modules/reviews/reviews_screen.dart';
import 'package:food_receipe_app/modules/saved%20recipe/saved_recipe.dart';
import 'package:icons_plus/icons_plus.dart';

class GlobalAppBar extends StatelessWidget {
  const GlobalAppBar({
    super.key,
    this.title,
    this.isDot = false,
    this.isBackButton = false,
  });
  final String? title;
  final bool? isDot;
  final bool? isBackButton;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      automaticallyImplyLeading: false,
      leading: isBackButton == false
          ? IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
              color: ColorConstants.blackColor,
            )
          : Container(),
      backgroundColor: Colors.transparent,
      centerTitle: true,
      title: customTextWidget(
          text: title ?? '', fontWeight: FontWeight.w600, fontSize: 18),
      actions: [
        isDot == true
            ? Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: PopupMenuButton(
                    color: ColorConstants.whiteColor,
                    icon: const Icon(Icons.more_horiz,
                        color: ColorConstants.blackColor),
                    itemBuilder: (_) => <PopupMenuItem<String>>[
                          PopupMenuItem<String>(
                              value: 'share',
                              child: SizedBox(

                                  // height: 30,
                                  child: Row(
                                children: [
                                  const Icon(
                                    FontAwesome.share_solid,
                                    size: 18,
                                    color: ColorConstants.blackColor,
                                  ),
                                  Spaces.midw,
                                  customTextWidget(
                                      text: "share",
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: ColorConstants.blackColor),
                                ],
                              ))),
                          PopupMenuItem<String>(
                              value: 'Rate Recipe',
                              child: SizedBox(

                                  // height: 30,
                                  child: Row(
                                children: [
                                  const Icon(
                                    FontAwesome.star_solid,
                                    size: 18,
                                    color: ColorConstants.blackColor,
                                  ),
                                  Spaces.midw,
                                  customTextWidget(
                                      text: "Rate Recipe",
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: ColorConstants.blackColor),
                                ],
                              ))),
                          PopupMenuItem<String>(
                              value: 'Review',
                              child: SizedBox(

                                  // height: 30,
                                  child: Row(
                                children: [
                                  const Icon(
                                    FontAwesome.message_solid,
                                    size: 18,
                                    color: ColorConstants.blackColor,
                                  ),
                                  Spaces.midw,
                                  customTextWidget(
                                      text: "Review",
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: ColorConstants.blackColor),
                                ],
                              ))),
                          PopupMenuItem<String>(
                              value: 'Unsave',
                              child: SizedBox(

                                  // height: 30,
                                  child: Row(
                                children: [
                                  const Icon(
                                    FontAwesome.bookmark_solid,
                                    size: 18,
                                    color: ColorConstants.blackColor,
                                  ),
                                  Spaces.midw,
                                  customTextWidget(
                                      text: "Unsave",
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: ColorConstants.blackColor),
                                ],
                              ))),
                        ],
                    onSelected: (index) async {
                      switch (index) {
                        case 'share':
                          shareDialog(context);
                          break;
                        case 'Rate Recipe':
                          ratingDialog(context);
                          break;
                        case 'Review':
                          context.pushScreenTo(ReviewsPage());
                          break;
                        case 'Unsave':
                          context.pushScreenTo(const SavedRecipePage());

                          break;
                      }
                    }))
            : Container()
      ],
    );
  }
}
