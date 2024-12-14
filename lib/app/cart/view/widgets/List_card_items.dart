import 'package:finance_app/app/cart/view/widgets/cart_card_item.dart';
import 'package:finance_app/app/home/data/home_data.dart';
import 'package:finance_app/core/extension/media_query.dart';
import 'package:finance_app/core/extension/sized_box.dart';
import 'package:flutter/material.dart';

class ListCardItems extends StatelessWidget {
  const ListCardItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: context.height / 2,
      child: ListView.separated(
        itemBuilder: (context, index) => CartCardItem(foodCardModel: foodCards[index]),
        separatorBuilder: (context, index) => (context.width / 20).ph,
        itemCount: foodCards.length,
      ),
    );
  }
}
