import 'package:finance_app/app/cart/view/widgets/List_card_items.dart';
import 'package:finance_app/app/cart/view/widgets/build_menu.dart';
import 'package:finance_app/app/home/view/widgets/build_appBar.dart';
import 'package:finance_app/app/home/view/widgets/build_drawer.dart';
import 'package:finance_app/core/extension/media_query.dart';
import 'package:finance_app/core/extension/sized_box.dart';
import 'package:finance_app/core/themes/app_color.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const BuildDrawer(),
      backgroundColor: AppColors.softWhite,
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
              //* text
              Text(
                "Order List",
                style: TextStyle(
                  color: AppColors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: context.width / 20,
                ),
              ),
              (context.width / 20).ph,
              //* card
              const ListCardItems(),
              //* menue
              const BuildMenu(),
            ],
          ),
        )),
      ),
    );
  }
}
