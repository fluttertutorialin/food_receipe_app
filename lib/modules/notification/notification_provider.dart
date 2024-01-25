import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_receipe_app/modules/notification/model/notification_model.dart';

final notifyProvider =
    ChangeNotifierProvider<NotifyProvider>((ref) => NotifyProvider());

class NotifyProvider extends ChangeNotifier {
  List<NotificationModel> notificationList = [
    NotificationModel(
        'New Recipe Alert!',
        'Lorem Ipsum tempor incididunt ut labore et dolore,in voluptate velit esse cillum',
        '10 mins ago'),
    NotificationModel(
        'New Recipe Alert!',
        'Lorem Ipsum tempor incididunt ut labore et dolore,in voluptate velit esse cillum',
        '30 mins ago'),
    NotificationModel(
        'Save Recipe Alert!',
        'Lorem Ipsum tempor incididunt ut labore et dolore,in voluptate velit esse cillum',
        '30 mins ago'),
  ];
}
