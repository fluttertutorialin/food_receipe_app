import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_receipe_app/modules/reviews/review_model.dart';

final rwProvider =
    ChangeNotifierProvider<ReviewProvider>((ref) => ReviewProvider());

class ReviewProvider extends ChangeNotifier {
  List<ReviewModel> reviewList = [
    ReviewModel(
        'assets/images/review_bella.png',
        'Bella Throne',
        'June 12, 2020 - 19:35',
        'Lorem Ipsum tempor incididunt ut labore et dolore,inise voluptate velit esse cillum',
        '9',
        '2'),
    ReviewModel(
        'assets/images/review_oshana.png',
        'Christopher Oshana',
        'June 12, 2020 - 19:35',
        'Lorem Ipsum tempor incididunt ut labore et dolore,inise voluptate.',
        '7',
        '1'),
    ReviewModel(
        'assets/images/review_kyle.png',
        'Kyle Austin',
        'June 12, 2020 - 19:35',
        'Lorem Ipsum tempor incididunt ut labore et dolore,inise voluptate.',
        '7',
        '1'),
    ReviewModel(
        'assets/images/review_wilson.png',
        'Jeniffern Wilson',
        'June 12, 2020 - 19:35',
        'Lorem Ipsum tempor incididunt ut labore et dolore,inise voluptate.tempor incididunt ut labore et dolore,inise voluptate',
        '3',
        '1'),
    ReviewModel(
        'assets/images/review_kate.png',
        'Kate Johnson',
        'June 12, 2020 - 19:35',
        'Lorem Ipsum tempor incididunt ut labore et dolore,inise voluptate.tempor incididunt ut labore et dolore,inise voluptate',
        '10',
        '1'),
  ];
}
