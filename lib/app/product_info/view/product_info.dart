import 'package:finance_app/app/home/data/model/food_card_model.dart';
import 'package:finance_app/app/home/view/widgets/build_appBar.dart';
import 'package:finance_app/app/home/view/widgets/build_drawer.dart';
import 'package:finance_app/core/extension/media_query.dart';
import 'package:finance_app/core/extension/sized_box.dart';
import 'package:finance_app/core/themes/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rating_bar_updated/rating_bar_updated.dart';

class ProductInfo extends StatelessWidget {
  final FoodCardModel foodCardModel;
  const ProductInfo({super.key, required this.foodCardModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const BuildDrawer(),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //*AppBar
              const BuildAppBar(),
              (context.width / 10).ph,
              //* Image
              Image.asset(foodCardModel.imagePath),
              (context.width / 10).ph,
              //* first row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RatingBar(
                    filledColor: AppColors.red,
                    size: 25,
                    onRatingChanged: (double rate) {},
                    filledIcon: Icons.star,
                    emptyIcon: Icons.star_border,
                    initialRating: foodCardModel.rateing,
                    maxRating: 5,
                  ),
                  Text(
                    "\$ ${foodCardModel.price}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              (context.width / 10).ph,
              //* second row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    foodCardModel.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Container(
                    width: context.width / 4,
                    height: context.height / 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: AppColors.red,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          CupertinoIcons.minus,
                          color: AppColors.softWhite,
                        ),
                        Text(
                          "1",
                          style: TextStyle(color: AppColors.softWhite),
                        ),
                        Icon(
                          CupertinoIcons.add,
                          color: AppColors.softWhite,
                        )
                      ],
                    ),
                  )
                ],
              ),
              (context.width / 10).ph,
              Text(foodCardModel.discreption),
              (context.width / 10).ph,
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                    AppColors.red,
                  )),
                  child: Text(
                    "Order Now",
                    style: TextStyle(color: AppColors.softWhite),
                  ),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
