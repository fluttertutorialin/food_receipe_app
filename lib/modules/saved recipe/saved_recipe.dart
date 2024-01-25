import 'package:flutter/material.dart';
import 'package:food_receipe_app/core/core_widgets/global_appbar.dart';
import 'package:food_receipe_app/core/core_widgets/spaces.dart';
import 'package:food_receipe_app/modules/saved%20recipe/widgets/saved_itemlist.dart';

class SavedRecipePage extends StatelessWidget {
  const SavedRecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: GlobalAppBar(
          isBackButton: true,
          title: 'Saved recipes',
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Spaces.mid, SavedItemList(), Spaces.large],
          ),
        ),
      ),
    );
  }
}
