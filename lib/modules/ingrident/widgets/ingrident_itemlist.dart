import 'package:flutter/material.dart';
import 'package:food_receipe_app/configs/constants/color_constants.dart';
import 'package:food_receipe_app/configs/extensions/buildcontext_extensions.dart';
import 'package:food_receipe_app/core/core_widgets/widget_links.dart';
import 'package:food_receipe_app/modules/ingrident/model/per_ingrident_model.dart';

class IngridentItemList extends StatelessWidget {
  const IngridentItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: ingridentList.length,
      itemBuilder: (context, index) {
        var item = ingridentList[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Container(
            alignment: Alignment.center,
            width: 315,
            height: context.screenHeight * 0.09,
            decoration: ShapeDecoration(
              color: const Color(0xFFD9D9D9).withOpacity(0.50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 52,
                        height: 52,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Image.asset(item.image),
                      ),
                      Spaces.smallw,
                      customTextWidget(
                          text: item.title,
                          fontSize: 16,
                          color: ColorConstants.blackColor,
                          fontWeight: FontWeight.w600),
                    ],
                  ),
                  customTextWidget(
                      text: item.weight,
                      fontSize: 14,
                      color: const Color(0xFFA9A9A9),
                      fontWeight: FontWeight.w400),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

List<PerIngridentModel> ingridentList = [
  PerIngridentModel('assets/images/tomatos.png', 'Tomatos', '500g'),
  PerIngridentModel('assets/images/cabbage.png', 'Cabbage', '300g'),
  PerIngridentModel('assets/images/taco.png', 'Taco', '300g'),
  PerIngridentModel('assets/images/slice.png', 'Slice Bread', '300g'),
];
