import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final btmshtProvider =
    ChangeNotifierProvider<BtmSheetProvider>((ref) => BtmSheetProvider());

class BtmSheetProvider extends ChangeNotifier {
  List<String> timeList = ['All', 'Newest', 'Oldest', 'Popularity'];
  List<String> rateList = ['5', '4', '3', '2', '1'];
  List<String> categoryList = [
    'All',
    'Cereal',
    'Vegetables',
    'Dinner',
    'Chinese',
    'Local Dish',
    'Fruit',
    'BreakFast',
    'Spanish',
    'Chinese',
    'Lunch'
  ];
  int isSelectedTime = 0;
  int isSelectedRate = 0;
  int isSelectedCatgry = 0;

  void selectedTime(int val) {
    isSelectedTime = val;
    notifyListeners();
  }

  void selectedRate(int val) {
    isSelectedRate = val;
    notifyListeners();
  }

  void selectedCatgry(int val) {
    isSelectedCatgry = val;
    notifyListeners();
  }
}
