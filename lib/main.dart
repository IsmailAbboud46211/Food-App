import 'package:finance_app/app_wrapper.dart';
import 'package:finance_app/core/router/app_router.dart';
import 'package:finance_app/core/themes/light_theme.dart';
import 'package:flutter/material.dart';

//* global var to access to the DB from anyWhere

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //* Router
  AppRouter appRouter = AppRouter();

  runApp(
    FoodApp(
      appRouter: appRouter,
    ),
  );
}

class FoodApp extends StatelessWidget {
  final AppRouter appRouter;
  const FoodApp({required this.appRouter, super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.onGeneratedRoutes,
      theme: LightTheme.setLightMode(),
      home: const AppWrapper(),
    );
  }
}
