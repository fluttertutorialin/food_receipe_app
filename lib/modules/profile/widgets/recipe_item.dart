import 'package:flutter/material.dart';
import 'package:food_receipe_app/core/core_widgets/spaces.dart';
import 'package:food_receipe_app/modules/saved%20recipe/widgets/saved_itemlist.dart';

class RecipeItems extends StatelessWidget {
  const RecipeItems({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Spaces.mid,
            SavedItemList(),
          ],
        ),
      ),
    );
  }
}
