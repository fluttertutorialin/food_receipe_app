import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_receipe_app/core/core_widgets/core_text.dart';
import 'package:food_receipe_app/core/core_widgets/spaces.dart';
import 'package:food_receipe_app/modules/dashboard/widgets/category_list.dart';
import 'package:food_receipe_app/modules/dashboard/widgets/new_recipe_list.dart';
import 'package:food_receipe_app/modules/dashboard/widgets/product_list.dart';
import 'package:food_receipe_app/modules/dashboard/widgets/profile_details.dart';
import 'package:food_receipe_app/modules/food%20receipe/widgets/top_search_bar.dart';

class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spaces.large,
                const ProfileDetails(),
                Spaces.large,
                const Padding(
                  padding: EdgeInsets.only(right: 25.0),
                  child: TopSearchBar(),
                ),
                Spaces.large,
                const CategoryListDashboard(),
                Spaces.large,
                const ProductList(),
                Spaces.large,
                customTextWidget(
                    text: 'New Recipes',
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
                Spaces.extrasmall,
                const NewRecipeList(),
                Spaces.large,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
