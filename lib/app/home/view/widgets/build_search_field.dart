import 'package:finance_app/core/extension/media_query.dart';
import 'package:finance_app/core/themes/app_color.dart';
import 'package:flutter/material.dart';

class BuildSearchField extends StatelessWidget {
  const BuildSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: context.height / 15,
      decoration:
          BoxDecoration(color: AppColors.softWhite, borderRadius: BorderRadius.circular(25), boxShadow: [
        BoxShadow(
          color: AppColors.lightGrey,
          spreadRadius: 2,
          blurRadius: 10,
          offset: const Offset(0, 3),
        )
      ]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.search,
              color: AppColors.red,
            ),
            SizedBox(
              width: 300,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "What do you like to have? ",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            const Icon(
              Icons.filter_list,
            ),
          ],
        ),
      ),
    );
  }
}
