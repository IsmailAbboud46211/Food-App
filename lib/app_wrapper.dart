import 'package:finance_app/app/home/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppWrapper extends StatefulWidget {
  const AppWrapper({super.key});

  @override
  State<AppWrapper> createState() => _AppWrapperState();
}

class _AppWrapperState extends State<AppWrapper> {
  @override
  Widget build(BuildContext context) {
    //* To kepp Device orientation portraitUp
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return const HomeScreen();
  }
}
