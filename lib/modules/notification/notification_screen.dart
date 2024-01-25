import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:food_receipe_app/configs/constants/color_constants.dart';
import 'package:food_receipe_app/core/core_widgets/global_appbar.dart';
import 'package:food_receipe_app/modules/notification/widgets/all_notify.dart';
import 'package:food_receipe_app/modules/notification/widgets/read_notify.dart';
import 'package:food_receipe_app/modules/notification/widgets/unread_notify.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: GlobalAppBar(
          isBackButton: true,
          title: 'Notifications',
        ),
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            ButtonsTabBar(
                unselectedDecoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(18)),
                height: 55,
                contentPadding: const EdgeInsets.symmetric(horizontal: 40),
                backgroundColor: ColorConstants.primaryColor,
                unselectedLabelStyle: const TextStyle(
                    color: ColorConstants.primaryColor,
                    fontWeight: FontWeight.bold),
                labelStyle: const TextStyle(
                    color: ColorConstants.whiteColor,
                    fontWeight: FontWeight.bold),
                tabs: const [
                  Tab(
                    text: "All",
                  ),
                  Tab(
                    text: "Read",
                  ),
                  Tab(
                    text: "Unread",
                  )
                ]),
            const Expanded(
              child: TabBarView(
                children: <Widget>[
                  AllNotifyPage(),
                  ReadNotifyPage(),
                  UnreadNotifyPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
