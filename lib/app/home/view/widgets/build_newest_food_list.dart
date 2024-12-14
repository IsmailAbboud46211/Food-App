import 'package:finance_app/app/home/data/home_data.dart';
import 'package:finance_app/app/home/view/widgets/build_newest_food_card.dart';
import 'package:finance_app/core/extension/media_query.dart';
import 'package:finance_app/core/extension/sized_box.dart';
import 'package:flutter/material.dart';

class BuildNewestFoodList extends StatelessWidget {
  const BuildNewestFoodList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: context.height,
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => BuildNewestFoodCard(
          foodCardModel: foodCards[index],
        ),
        separatorBuilder: (context, index) => (context.width / 20).ph,
        itemCount: foodCards.length,
      ),
    );
  }
}
