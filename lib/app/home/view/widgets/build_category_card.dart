import 'package:finance_app/core/extension/media_query.dart';
import 'package:finance_app/core/themes/app_color.dart';
import 'package:flutter/material.dart';

class BuildCategoryCard extends StatelessWidget {
  final String imagePath;
  const BuildCategoryCard({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: context.width / 5,
        height: context.height / 10,
        decoration:
            BoxDecoration(color: AppColors.softWhite, borderRadius: BorderRadius.circular(25), boxShadow: [
          BoxShadow(
            color: AppColors.lightGrey,
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ]),
        child: Image.asset(imagePath),
      ),
    );
  }
}
