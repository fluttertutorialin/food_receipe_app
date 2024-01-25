import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_receipe_app/configs/extensions/buildcontext_extensions.dart';
import 'package:food_receipe_app/core/core_widgets/core_text.dart';
import 'package:food_receipe_app/core/core_widgets/spaces.dart';
import 'package:food_receipe_app/modules/reviews/review_provider.dart';

class ReviewList extends ConsumerWidget {
  const ReviewList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rwRead = ref.read(rwProvider);

    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: rwRead.reviewList.length,
        itemBuilder: (context, index) {
          var item = rwRead.reviewList[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: SizedBox(
              width: context.screenWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    leading: SizedBox(
                      child: Image.asset(
                        item.image,
                      ),
                    ),
                    title: customTextWidget(
                        text: item.name,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                    subtitle: customTextWidget(
                        text: item.time,
                        color: const Color(0xFFA9A9A9),
                        fontSize: 10,
                        fontWeight: FontWeight.w400),
                  ),
                  customTextWidget(
                      lineHeight: 1.6,
                      text: item.comment,
                      color: const Color(0xFF484848),
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                  Spaces.smallh,
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 35,
                        width: 50,
                        decoration: BoxDecoration(
                            color: const Color(0xFFDBEBE7),
                            borderRadius: BorderRadius.circular(12.0)),
                        child: customTextWidget(
                            text: '👍 ${item.thumbHigh}',
                            color: const Color(0xFFA9A9A9),
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      ),
                      Spaces.smallw,
                      Container(
                        alignment: Alignment.center,
                        height: 35,
                        width: 50,
                        decoration: BoxDecoration(
                            color: const Color(0xFFDBEBE7),
                            borderRadius: BorderRadius.circular(12.0)),
                        child: customTextWidget(
                            text: '👎 ${item.thumbLow}',
                            color: const Color(0xFFA9A9A9),
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
