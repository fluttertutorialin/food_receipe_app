import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:food_receipe_app/configs/constants/color_constants.dart';
import 'package:food_receipe_app/core/core_widgets/widget_links.dart';
import 'package:food_receipe_app/modules/profile/widgets/photo_list.dart';
import 'package:food_receipe_app/modules/profile/widgets/profile_text.dart';
import 'package:food_receipe_app/modules/profile/widgets/recipe_item.dart';
import 'package:food_receipe_app/modules/reviews/widgets/review_list.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: GlobalAppBar(
          isBackButton: true,
          title: 'Profile',
          isDot: true,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: DefaultTabController(
          length: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Spaces.smallh,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage:
                        AssetImage('assets/images/chef_profile.png'),
                  ),
                  Spaces.smallw,
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      profileText('Recipe', '4'),
                      Spaces.midw,
                      profileText('Followers', '2.5M'),
                      Spaces.midw,
                      profileText('Following', '259'),
                    ],
                  ),
                ],
              ),
              Spaces.mid,
              customTextWidget(
                text: 'Afuwape Abiodun',
                fontSize: 19,
                fontWeight: FontWeight.w600,
              ),
              Spaces.smallh,
              customTextWidget(
                  text: 'Chef',
                  color: const Color(0xFFA9A9A9),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
              Spaces.smallh,
              customTextWidget(
                  lineHeight: 1.9,
                  text: 'Private Chef\nPassionate about food and life 🥘🍲🍝🍱',
                  color: const Color(0xFFA9A9A9),
                  fontSize: 13,
                  fontWeight: FontWeight.w400),
              Spaces.smallh,
              customTextWidget(
                  fontWeight: FontWeight.w400,
                  text: 'More...',
                  color: ColorConstants.primaryColor),
              Spaces.smallh,
              ButtonsTabBar(
                  unselectedDecoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(18)),
                  height: 55,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 35),
                  backgroundColor: ColorConstants.primaryColor,
                  unselectedLabelStyle: const TextStyle(
                      color: ColorConstants.primaryColor,
                      fontWeight: FontWeight.bold),
                  labelStyle: const TextStyle(
                      color: ColorConstants.whiteColor,
                      fontWeight: FontWeight.bold),
                  tabs: const [
                    Tab(
                      text: "Recipe",
                    ),
                    Tab(
                      text: "Videos",
                    ),
                    Tab(
                      text: "Tag",
                    )
                  ]),
              const Expanded(
                child: TabBarView(
                  children: <Widget>[
                    RecipeItems(),
                    PhotoList(),
                    SingleChildScrollView(child: ReviewList()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
