import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_receipe_app/configs/constants/color_constants.dart';
import 'package:food_receipe_app/configs/extensions/buildcontext_extensions.dart';
import 'package:food_receipe_app/core/core_widgets/widget_links.dart';
import 'package:food_receipe_app/modules/dashboard/dashboard_provider.dart';
import 'package:food_receipe_app/modules/food%20receipe/widgets/top_rating.dart';
import 'package:food_receipe_app/modules/saved%20recipe/widgets/bottom_txtrecipe.dart';

class SavedItemList extends ConsumerWidget {
  const SavedItemList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dbRead = ref.read(dbProvider);
    final dbWatch = ref.watch(dbProvider);

    return dbWatch.savedRecipeList.isEmpty
        ? SizedBox(
            height: context.screenHeight * 0.6,
            child: Center(
              child: customTextWidget(text: 'No recipe is saved yet.'),
            ),
          )
        : ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: dbRead.savedRecipeList.length,
            itemBuilder: ((context, index) {
              var item = dbRead.savedRecipeList[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  width: context.screenWidth,
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: AssetImage(
                          item.image,
                        ),
                        fit: BoxFit.cover),
                  ),
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        begin: const Alignment(0.00, -1.00),
                        end: const Alignment(0, 1),
                        colors: [Colors.black.withOpacity(0), Colors.black],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Stack(
                      children: [
                        const TopRating(),
                        Positioned(
                          top: 80,
                          right: 10,
                          left: 10,
                          bottom: 10,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              BottomTextRecipe(
                                width: 170,
                                title: item.title,
                                subTitle: item.subTitle,
                              ),
                              const Spacer(),
                              SizedBox(
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
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                      ),
                                      child: Center(
                                          child: GestureDetector(
                                        onTap: () {
                                          dbRead.removeList(index);
                                        },
                                        child: const Icon(
                                          Icons.delete,
                                          size: 13,
                                          color: ColorConstants.primaryColor,
                                        ),
                                      )),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}

// List<ReceipeModel> savedRecipe = [
//   ReceipeModel('Traditional spare ribs baked', 'By Chef John',
//       'assets/images/receipe_handi.png'),
//   ReceipeModel('spice roasted chicken with flavored rice', 'By Mark Kelvin',
//       'assets/images/receipe_salan.png'),
//   ReceipeModel('Spicy fried rice mix chicken bali', 'By Spicy Nelly',
//       'assets/images/receipe_mutton.png'),
//   ReceipeModel('Lamb chops with fruity couscous and mint', 'By Spicy Nelly',
//       'assets/images/recipe_kabab.png'),
// ];
