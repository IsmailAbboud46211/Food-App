import 'package:finance_app/core/themes/app_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildFloatingIcon extends StatelessWidget {
  final IconData icon;
  final Function()? onTap;
  const BuildFloatingIcon({super.key, required this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
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
        child: Icon(
          icon,
          color: AppColors.red,
        ),
      ),
    );
  }
}
