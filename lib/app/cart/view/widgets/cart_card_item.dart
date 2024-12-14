import 'package:finance_app/app/home/data/model/food_card_model.dart';
import 'package:finance_app/core/extension/media_query.dart';
import 'package:finance_app/core/themes/app_color.dart';
import 'package:flutter/cupertino.dart';

class CartCardItem extends StatelessWidget {
  final FoodCardModel foodCardModel;
  const CartCardItem({super.key, required this.foodCardModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: context.height / 7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.softWhite,
        boxShadow: [
          BoxShadow(
            color: AppColors.lightGrey,
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                foodCardModel.imagePath,
                width: context.width / 2.5,
              ),
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    foodCardModel.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: context.width / 25,
                    ),
                  ),
                  Text(
                    foodCardModel.subtitle,
                    style: TextStyle(
                      fontSize: context.width / 25,
                    ),
                  ),
                  Text(
                    "\$ ${foodCardModel.price}",
                    style: TextStyle(
                      color: AppColors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: context.width / 25,
                    ),
                  ),
                ]),
            Container(
              width: context.width / 8,
              height: context.height / 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.red,
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.minus,
                      color: AppColors.softWhite,
                    ),
                    Text(
                      "1",
                      style: TextStyle(
                        color: AppColors.softWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: context.width / 25,
                      ),
                    ),
                    Icon(
                      CupertinoIcons.minus,
                      color: AppColors.softWhite,
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
