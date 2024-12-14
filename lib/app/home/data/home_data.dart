import 'package:finance_app/app/home/data/model/food_card_model.dart';
import 'package:finance_app/core/themes/app_color.dart';
import 'package:finance_app/core/utils/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<String> foodImages = [
  Images.biryaniImage,
  Images.burgerImage,
  Images.drinkImage,
  Images.pizzaImage,
];

List<FoodCardModel> foodCards = [
  FoodCardModel(
    imagePath: Images.biryaniImage,
    title: "Nice biryani",
    subtitle: "Test it now !",
    price: 40,
    discreption: "Test now the best rice",
    rateing: 5,
  ),
  FoodCardModel(
    imagePath: Images.salanImage,
    title: "Nice Salan",
    subtitle: "try it now !",
    price: 50,
    discreption: "Test now the best food",
    rateing: 4,
  ),
  FoodCardModel(
    imagePath: Images.burgerImage,
    title: "Hot Burger",
    subtitle: "Test it now !",
    price: 60,
    discreption: "Test now the best burger",
    rateing: 3,
  ),
];

List drawerItems = [
  [
    "Home",
    Icon(
      CupertinoIcons.home,
      color: AppColors.red,
    ),
  ],
  [
    "Profile",
    Icon(
      CupertinoIcons.person,
      color: AppColors.red,
    ),
  ],
  [
    "My Order",
    Icon(
      CupertinoIcons.cart_fill,
      color: AppColors.red,
    ),
  ],
  [
    "My Favorites",
    Icon(
      CupertinoIcons.heart_fill,
      color: AppColors.red,
    ),
  ],
  [
    "Settings",
    Icon(
      CupertinoIcons.settings,
      color: AppColors.red,
    ),
  ],
  [
    "Log out",
    Icon(
      Icons.exit_to_app,
      color: AppColors.red,
    ),
  ],
];
