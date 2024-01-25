import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_receipe_app/configs/constants/color_constants.dart';
import 'package:food_receipe_app/configs/extensions/buildcontext_extensions.dart';
import 'package:food_receipe_app/core/core_widgets/core_text.dart';
import 'package:food_receipe_app/core/core_widgets/spaces.dart';
import 'package:food_receipe_app/modules/dashboard/dashboard_provider.dart';

class NewRecipeList extends ConsumerWidget {
  const NewRecipeList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dbRead = ref.read(dbProvider);
    return SizedBox(
      height: context.screenHeight * 0.24,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: dbRead.newRecipeList.length,
        itemBuilder: (context, index) {
          var item = dbRead.newRecipeList[index];
          return Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: SizedBox(
              height: context.screenHeight * 0.24,
              width: context.screenWidth * 0.89,
              child: Stack(
                children: [
                  Positioned(
                    top: 55,
                    bottom: 10,
                    right: 0,
                    left: 10,
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      height: 80,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: ColorConstants.whiteColor,
                        shadows: const [
                          BoxShadow(
                            color: Color(0x19000000),
                            blurRadius: 20,
                            offset: Offset(0, 0),
                            spreadRadius: 4,
                          )
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: SizedBox(
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: SizedBox(
                                  width: context.screenWidth * 0.50,
                                  child: customTextWidget(
                                      overflow: TextOverflow.ellipsis,
                                      text: item.name,
                                      color: const Color(0xFF484848),
                                      fontSize: 19,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Spaces.extrasmall,
                              RatingBar.builder(
                                initialRating: 5,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 25,
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {},
                              ),
                              Spaces.smallh,
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CircleAvatar(
                                        radius: 14,
                                        backgroundImage:
                                            AssetImage(item.reviewImage),
                                      ),
                                      Spaces.extrasmallw,
                                      customTextWidget(
                                          text: item.reviewName,
                                          color: const Color(0xFFA9A9A9),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400),
                                    ],
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Icon(
                                        Icons.timer_outlined,
                                        color: Color(0xFFA9A9A9),
                                      ),
                                      Spaces.extrasmallw,
                                      customTextWidget(
                                          text: '20 mins',
                                          color: const Color(0xFFA9A9A9),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 10.0,
                    ),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage(item.image),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
