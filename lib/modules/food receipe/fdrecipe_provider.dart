import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_receipe_app/modules/food%20receipe/model/recipe_item_model.dart';

final frProvider =
    ChangeNotifierProvider<FoodRecipeProvider>((ref) => FoodRecipeProvider());

class FoodRecipeProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();
  String searchVal = '';
  List<ReceipeModel> searchData = [];
  void searchValue(String val) {
    searchData.clear();
    searchVal = val;
    if (searchVal.isNotEmpty) {
      for (var e in receipeData) {
        if (e.title.contains(searchVal)) {
          searchData.add(e);
        }
      }
    } else {
      searchData.clear();
    }

    debugPrint(searchData.length.toString());
    notifyListeners();
  }

  List<ReceipeModel> receipeData = [
    ReceipeModel('Traditional spare ribs baked', 'By Chef John',
        'assets/images/receipe_handi.png'),
    ReceipeModel('Lamb chops with fruity couscous and mint..', 'By Spicy Nelly',
        'assets/images/receipe_salan.png'),
    ReceipeModel('spice roasted chicken with flavored rice', 'By Mark Kelvin',
        'assets/images/receipe_mutton.png'),
    ReceipeModel('Chinese style Egg fried rice with sliced pork..',
        'By laura wilson', 'assets/images/recipe_kabab.png'),
    ReceipeModel('Lamb chops with fruity couscous and mint..', 'By Spicy Nelly',
        'assets/images/receipe_salan.png'),
    ReceipeModel('Traditional spare ribs baked', 'By Chef John',
        'assets/images/receipe_handi.png'),
    ReceipeModel('Traditional spare ribs couscous', 'By Chef Nelly',
        'assets/images/receipe_mutton.png'),
    ReceipeModel(
        'Traditional spare ribs', 'By Chef', 'assets/images/recipe_kabab.png'),
  ];
}
