import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_receipe_app/configs/constants/color_constants.dart';
import 'package:food_receipe_app/configs/extensions/buildcontext_extensions.dart';
import 'package:food_receipe_app/core/core_widgets/core_text.dart';
import 'package:food_receipe_app/modules/food%20receipe/btmsheet_provider.dart';

class CategoryList extends ConsumerWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final btmRead = ref.read(btmshtProvider);
    final btmWatch = ref.watch(btmshtProvider);
    return SizedBox(
        height: context.screenHeight * 0.16,
        child: Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: List.generate(10, (index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: GestureDetector(
                  onTap: () {
                    btmRead.selectedCatgry(index);
                  },
                  child: Container(
                    width: 96,
                    height: 27,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: ShapeDecoration(
                      color: btmWatch.isSelectedCatgry == index
                          ? const Color(0xFF71B1A1)
                          : Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFF71B1A1)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: index == 3
                        ? Center(
                            child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              customTextWidget(
                                  text: btmRead.categoryList[index],
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  color: btmWatch.isSelectedCatgry == index
                                      ? ColorConstants.whiteColor
                                      : const Color(0xFF71B1A1)),
                              Icon(
                                Icons.star,
                                color: btmWatch.isSelectedCatgry == index
                                    ? ColorConstants.whiteColor
                                    : const Color(0xFF71B1A1),
                                size: 15,
                              )
                            ],
                          ))
                        : Center(
                            child: customTextWidget(
                                text: btmRead.categoryList[index],
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: btmWatch.isSelectedCatgry == index
                                    ? ColorConstants.whiteColor
                                    : const Color(0xFF71B1A1))),
                  ),
                ),
              );
            })));
  }
}
