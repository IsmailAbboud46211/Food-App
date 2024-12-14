import 'package:finance_app/app/home/view/widgets/build_appBar.dart';
import 'package:finance_app/app/home/view/widgets/build_categories_list.dart';
import 'package:finance_app/app/home/view/widgets/build_drawer.dart';
import 'package:finance_app/app/home/view/widgets/build_newest_food_list.dart';
import 'package:finance_app/app/home/view/widgets/build_popular_list.dart';
import 'package:finance_app/app/home/view/widgets/build_search_field.dart';
import 'package:finance_app/core/extension/media_query.dart';
import 'package:finance_app/core/extension/routing_extenstion.dart';
import 'package:finance_app/core/extension/sized_box.dart';
import 'package:finance_app/core/router/route_name.dart';
import 'package:finance_app/core/themes/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.softWhite,
      drawer: const BuildDrawer(),
      //* float action button
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: AppColors.lightGrey,
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(0, 3),
            )
          ],
        ),
        child: FloatingActionButton(
          onPressed: () => context.go(routeName: RoutesNames.cart),
          backgroundColor: AppColors.softWhite,
          child: Icon(
            CupertinoIcons.cart,
            color: AppColors.red,
          ),
        ),
      ),
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
                //* build search field
                const BuildSearchField(),
                (context.width / 20).ph,
                Text(
                  "Categories",
                  style: TextStyle(
                    color: AppColors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: context.width / 20,
                  ),
                ),
                //* categories list
                const BuildCategoriesList(),
                (context.width / 15).ph,
                Text(
                  "Popular",
                  style: TextStyle(
                    color: AppColors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: context.width / 20,
                  ),
                ),
                //* popular list
                const BuildPopularList(),
                (context.width / 15).ph,
                Text(
                  "Newest",
                  style: TextStyle(
                    color: AppColors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: context.width / 20,
                  ),
                ),
                (context.width / 20).ph,
                //* newest food list
                const BuildNewestFoodList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
