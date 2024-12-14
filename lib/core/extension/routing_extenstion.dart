import 'dart:developer';

import 'package:colorize/colorize.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_extensions
extension context on BuildContext {
  Future<dynamic> go({
    required String routeName,
    Object? arguments,
    bool replacement = false,
  }) {
    printGo("Go to", routeName);
    return !replacement
        ? Navigator.pushNamed(this, routeName, arguments: arguments)
        : Navigator.pushReplacementNamed(this, routeName, arguments: arguments);
  }

  Future<void> goUntil({
    required String routeName,
    Object? arguments,
  }) {
    printGo("Go Until", routeName);
    return Navigator.pushNamedAndRemoveUntil(this, routeName, (route) => false,
        arguments: arguments);
  }

  void pop({dynamic value}) {
    printPop();
    return Navigator.pop(this, value);
  }
}

printGo(String path, String routeName) =>
    log("$path ${Colorize(routeName).apply(Styles.GREEN)}");

printPop() => log(Colorize("Pop").apply(Styles.YELLOW).toString());
