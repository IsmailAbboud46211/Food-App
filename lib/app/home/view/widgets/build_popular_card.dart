import 'package:finance_app/app/home/data/model/food_card_model.dart';
import 'package:finance_app/core/extension/media_query.dart';
import 'package:finance_app/core/themes/app_color.dart';
import 'package:flutter/material.dart';

class BuildPopularCard extends StatelessWidget {
  final FoodCardModel foodCardModel;
  const BuildPopularCard({super.key, required this.foodCardModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: context.width / 3,
        height: context.height / 3,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(25), color: AppColors.softWhite, boxShadow: [
          BoxShadow(
            color: AppColors.lightGrey,
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 3),
          )
        ]),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(foodCardModel.imagePath),
              const Spacer(),
              Text(
                foodCardModel.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: context.width / 22,
                ),
              ),
              Text(foodCardModel.subtitle),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$ ${foodCardModel.price}",
                    style: TextStyle(
                      color: AppColors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: AppColors.red,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
