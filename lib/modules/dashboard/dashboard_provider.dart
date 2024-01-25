import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_receipe_app/modules/dashboard/model/product_model.dart';
import 'package:food_receipe_app/modules/food%20receipe/model/recipe_item_model.dart';

final dbProvider =
    ChangeNotifierProvider<DashboardProvider>((ref) => DashboardProvider());

class DashboardProvider extends ChangeNotifier {
  int isSelectedCategry = 0;
  int isSelectedPrdct = 0;
  void selectedProduct(int val) {
    isSelectedPrdct = val;
    notifyListeners();
  }

  void selectedCategry(int val) {
    isSelectedCategry = val;
    notifyListeners();
  }

  List<ReceipeModel> savedRecipeList = [];
  void removeList(int index) {
    savedRecipeList.removeAt(index);
    notifyListeners();
  }

  List<String> categoryListDashboard = [
    'All',
    'Indian',
    'Italian',
    'Asian',
    'Chinese'
  ];
  List<RecipeModel> newRecipeList = [
    RecipeModel(
        'Steak with tomato sauce and bulgur rice.',
        '20 Mins',
        'assets/images/new_recipe.png',
        'assets/images/review_image.png',
        'By James Milner'),
    RecipeModel(
        'Pilaf sweet with lamb-and-raisins',
        '15 Mins',
        'assets/images/new_recipe.png',
        'assets/images/recipe_image.png',
        'By Laura wilson'),
  ];
  List<ProductModel> productList = [
    ProductModel('Classic Greek Salad', '15 Mins',
        'assets/images/crunchy_nut.png', 'By James Milner'),
    ProductModel('Crunchy Nut Coleslaw', '10 Mins',
        'assets/images/greek_salad.png', 'By Laura wilson'),
  ];
}
