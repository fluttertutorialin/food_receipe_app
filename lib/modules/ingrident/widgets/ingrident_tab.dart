import 'package:flutter/material.dart';
import 'package:food_receipe_app/core/core_widgets/core_text.dart';
import 'package:food_receipe_app/core/core_widgets/spaces.dart';
import 'package:food_receipe_app/modules/ingrident/widgets/ingrident_itemlist.dart';

class IngridentTab extends StatelessWidget {
  const IngridentTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Spaces.mid,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('assets/icons/cook_icon.png'),
                    Spaces.smallw,
                    customTextWidget(
                        text: '1 serve',
                        color: const Color(0xFFA9A9A9),
                        fontSize: 12,
                        fontWeight: FontWeight.w400)
                  ],
                ),
                customTextWidget(
                    text: '10 Items',
                    color: const Color(0xFFA9A9A9),
                    fontSize: 12,
                    fontWeight: FontWeight.w400)
              ],
            ),
            Spaces.mid,
            const IngridentItemList(),
          ],
        ),
      ),
    );
  }
}
