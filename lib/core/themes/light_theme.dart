import 'package:finance_app/core/themes/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LightTheme {
  static ThemeData setLightMode() => ThemeData.light(useMaterial3: true).copyWith(
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.light,
            statusBarColor: AppColors.primaryColor,
            systemNavigationBarColor: AppColors.primaryColor,
          ),
        ),
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.light(
          primary: AppColors.primaryColor,
        ),
      );
}
