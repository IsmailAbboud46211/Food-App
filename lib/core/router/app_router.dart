import 'package:finance_app/app/cart/view/cart_screen.dart';
import 'package:finance_app/app/home/data/model/food_card_model.dart';
import 'package:finance_app/app/home/view/home_screen.dart';
import 'package:finance_app/app/product_info/view/product_info.dart';
import 'package:finance_app/core/router/route_name.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? onGeneratedRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RoutesNames.home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );

      case RoutesNames.cart:
        return MaterialPageRoute(
          builder: (_) => const CartScreen(),
        );

      case RoutesNames.productInfo:
        return MaterialPageRoute(
          builder: (_) => ProductInfo(
            foodCardModel: settings.arguments as FoodCardModel,
          ),
        );
    }

    return null;
  }
}
