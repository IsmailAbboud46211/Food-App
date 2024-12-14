import 'package:finance_app/app/home/data/model/food_card_model.dart';
import 'package:finance_app/core/extension/media_query.dart';
import 'package:finance_app/core/extension/routing_extenstion.dart';
import 'package:finance_app/core/extension/sized_box.dart';
import 'package:finance_app/core/router/route_name.dart';
import 'package:finance_app/core/themes/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rating_bar_updated/rating_bar_updated.dart';

class BuildNewestFoodCard extends StatelessWidget {
  final FoodCardModel foodCardModel;
  const BuildNewestFoodCard({super.key, required this.foodCardModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: context.height / 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: AppColors.softWhite,
        boxShadow: [
          BoxShadow(
            color: AppColors.lightGrey,
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: GestureDetector(
        onTap: () => context.go(
          routeName: RoutesNames.productInfo,
          arguments: foodCardModel,
        ),
        child: Row(
          children: [
            Image.asset(
              foodCardModel.imagePath,
              width: context.width / 2.5,
              height: context.height / 6,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        foodCardModel.title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: context.width / 22,
                        ),
                      ),
                      (context.width / 10).pw,
                      Icon(
                        Icons.favorite_border,
                        color: AppColors.red,
                      )
                    ],
                  ),
                  Text(
                    foodCardModel.discreption,
                  ),
                  (context.width / 30).ph,
                  RatingBar(
                    filledColor: AppColors.red,
                    size: 25,
                    onRatingChanged: (double rate) {},
                    filledIcon: Icons.star,
                    emptyIcon: Icons.star_border,
                    initialRating: foodCardModel.rateing,
                    maxRating: 5,
                  ),
                  (context.width / 50).ph,
                  Row(
                    children: [
                      Text(
                        "\$ ${foodCardModel.price}",
                        style: TextStyle(
                          color: AppColors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      (context.width / 4).pw,
                      Icon(
                        CupertinoIcons.cart,
                        color: AppColors.red,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
