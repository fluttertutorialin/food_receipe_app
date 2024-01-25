import 'package:flutter/material.dart';
import 'package:food_receipe_app/core/core_widgets/widget_links.dart';
import 'package:food_receipe_app/modules/ingrident/model/procedure_model.dart';

class ProcedureStepList extends StatelessWidget {
  const ProcedureStepList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: procedureList.length,
      itemBuilder: (context, index) {
        var item = procedureList[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Container(
            alignment: Alignment.center,
            width: 315,
            decoration: ShapeDecoration(
              color: const Color(0xFFD9D9D9).withOpacity(0.50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    customTextWidget(
                        text: item.steps,
                        fontWeight: FontWeight.w600,
                        fontSize: 12),
                    Spaces.smallh,
                    customTextWidget(
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFFA9A9A9),
                        fontSize: 11,
                        text: item.details)
                  ],
                )),
          ),
        );
      },
    );
  }
}

List<ProcedureModel> procedureList = [
  ProcedureModel('Step 1',
      'Lorem Ipsum tempor incididunt ut labore et dolore,in voluptate velit esse cillum dolore eu fugiat nulla pariatur?'),
  ProcedureModel('Step 2',
      'Lorem Ipsum tempor incididunt ut labore et dolore,in voluptate velit esse cillum dolore eu fugiat nulla pariatur?Tempor incididunt ut labore et dolore,in voluptate velit esse cillum dolore eu fugiat nulla pariatur?'),
  ProcedureModel('Step 3',
      'Lorem Ipsum tempor incididunt ut labore et dolore,in voluptate velit esse cillum dolore eu fugiat nulla pariatur?'),
];
