import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_receipe_app/configs/extensions/buildcontext_extensions.dart';
import 'package:food_receipe_app/modules/food%20receipe/fdrecipe_provider.dart';
import 'package:food_receipe_app/modules/food%20receipe/widgets/bottom_text.dart';
import 'package:food_receipe_app/modules/food%20receipe/widgets/top_rating.dart';
import 'package:food_receipe_app/modules/ingrident/ingrident_screen.dart';

class SearchItemList extends ConsumerWidget {
  const SearchItemList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final frWatch = ref.watch(frProvider);

    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: frWatch.searchData.isEmpty
            ? frWatch.receipeData.length
            : frWatch.searchData.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 18.0, mainAxisSpacing: 18.0),
        itemBuilder: ((context, index) {
          var item = frWatch.searchData.isEmpty
              ? frWatch.receipeData[index]
              : frWatch.searchData[index];
          return GestureDetector(
            onTap: () {
              context.pushScreenTo(IngridentPage(
                img: item.image,
                title: item.title,
                name: item.subTitle,
              ));
            },
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
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
                    BottomTextTitle(
                      title: item.title,
                      subTitle: item.subTitle,
                    ),
                  ],
                ),
              ),
            ),
          );
        }));
  }
}
