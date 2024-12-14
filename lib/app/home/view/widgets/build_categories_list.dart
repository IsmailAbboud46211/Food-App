import 'package:finance_app/app/home/data/home_data.dart';
import 'package:finance_app/app/home/view/widgets/build_category_card.dart';
import 'package:finance_app/core/extension/media_query.dart';
import 'package:finance_app/core/extension/sized_box.dart';
import 'package:flutter/material.dart';

class BuildCategoriesList extends StatelessWidget {
  const BuildCategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: context.height / 10,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => BuildCategoryCard(imagePath: foodImages[index]),
        separatorBuilder: (context, index) => (context.width / 20).pw,
        itemCount: foodImages.length,
      ),
    );
  }
}
