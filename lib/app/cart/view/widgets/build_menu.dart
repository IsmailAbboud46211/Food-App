import 'package:finance_app/core/extension/media_query.dart';
import 'package:finance_app/core/themes/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildMenu extends StatelessWidget {
  const BuildMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: context.height / 3,
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
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            //* first row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Items :",
                  style: TextStyle(
                    fontSize: context.width / 25,
                  ),
                ),
                Text(
                  "3",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: context.width / 25,
                  ),
                ),
              ],
            ),
            const Divider(),
            //* second row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Sub-Total :",
                  style: TextStyle(
                    fontSize: context.width / 25,
                  ),
                ),
                Text(
                  "\$ 150",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: context.width / 25,
                  ),
                ),
              ],
            ),
            Divider(
              color: AppColors.lightGrey,
            ),
            //* Third row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Delievery :",
                  style: TextStyle(
                    fontSize: context.width / 25,
                  ),
                ),
                Text(
                  "\$ 10",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: context.width / 25,
                  ),
                ),
              ],
            ),
            Divider(
              color: AppColors.lightGrey,
            ),
            //* fourth row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total :",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: context.width / 25,
                  ),
                ),
                Text(
                  "\$ 160",
                  style: TextStyle(
                    color: AppColors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: context.width / 25,
                  ),
                ),
              ],
            ),
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
      ),
    );
  }
}
