import 'package:finance_app/app/home/data/home_data.dart';
import 'package:finance_app/app/home/view/widgets/build_popular_card.dart';
import 'package:finance_app/core/extension/media_query.dart';
import 'package:finance_app/core/extension/sized_box.dart';
import 'package:flutter/material.dart';

class BuildPopularList extends StatelessWidget {
  const BuildPopularList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: context.height / 3.5,
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => BuildPopularCard(
              foodCardModel: foodCards[index],
            ),
            separatorBuilder: (context, index) => (context.width / 20).pw,
            itemCount: foodCards.length,
          )),
    );
  }
}
