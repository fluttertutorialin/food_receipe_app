import 'package:flutter/material.dart';
import 'package:food_receipe_app/core/core_widgets/core_text.dart';
import 'package:food_receipe_app/core/core_widgets/spaces.dart';
import 'package:food_receipe_app/modules/notification/widgets/notify_list.dart';

class ReadNotifyPage extends StatelessWidget {
  const ReadNotifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spaces.smallh,
              customTextWidget(
                  text: 'Today', fontSize: 12, fontWeight: FontWeight.w600),
              Spaces.mid,
              const NotifyListToday(),
              customTextWidget(
                  text: 'Yesterday', fontSize: 12, fontWeight: FontWeight.w600),
              Spaces.mid,
              const NotifyListToday(),
              Spaces.mid,
            ],
          ),
        ),
      ),
    );
  }
}
