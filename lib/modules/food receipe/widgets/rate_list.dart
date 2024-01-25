import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_receipe_app/configs/constants/color_constants.dart';
import 'package:food_receipe_app/core/core_widgets/core_text.dart';
import 'package:food_receipe_app/modules/food%20receipe/btmsheet_provider.dart';

class RateList extends ConsumerWidget {
  const RateList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final btmRead = ref.read(btmshtProvider);
    final btmWatch = ref.watch(btmshtProvider);
    return SizedBox(
      height: 35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: btmRead.rateList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                btmRead.selectedRate(index);
              },
              child: Container(
                height: 27,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: ShapeDecoration(
                  color: btmWatch.isSelectedRate == index
                      ? const Color(0xFF71B1A1)
                      : Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFF71B1A1)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      customTextWidget(
                          text: btmRead.rateList[index],
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: btmWatch.isSelectedRate == index
                              ? ColorConstants.whiteColor
                              : const Color(0xFF71B1A1)),
                      Icon(
                        Icons.star,
                        color: btmWatch.isSelectedRate == index
                            ? ColorConstants.whiteColor
                            : const Color(0xFF71B1A1),
                        size: 19,
                      )
                    ],
                  ),
                )),
              ),
            ),
          );
        },
      ),
    );
  }
}
