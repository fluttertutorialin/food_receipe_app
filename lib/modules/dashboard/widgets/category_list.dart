import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_receipe_app/configs/constants/color_constants.dart';
import 'package:food_receipe_app/core/core_widgets/core_text.dart';
import 'package:food_receipe_app/modules/dashboard/dashboard_provider.dart';

class CategoryListDashboard extends ConsumerWidget {
  const CategoryListDashboard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dbRead = ref.read(dbProvider);
    final dbWatch = ref.watch(dbProvider);
    return SizedBox(
      height: 35,
      child: ListView.builder(
        itemCount: dbRead.categoryListDashboard.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var item = dbRead.categoryListDashboard[index];
          return Padding(
            padding: const EdgeInsets.only(right: 13.0),
            child: GestureDetector(
              onTap: () {
                dbRead.selectedCategry(index);
              },
              child: Container(
                alignment: Alignment.center,
                height: 31,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                decoration: ShapeDecoration(
                  color: dbWatch.isSelectedCategry == index
                      ? const Color(0xFF119475)
                      : Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: customTextWidget(
                  text: item,
                  color: dbWatch.isSelectedCategry == index
                      ? ColorConstants.whiteColor
                      : ColorConstants.blackColor,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
