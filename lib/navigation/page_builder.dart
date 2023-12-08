import 'package:flutter/material.dart';
import 'package:navigator_2_base/pages/error_page.dart';
import 'package:navigator_2_base/pages/home_page.dart';
import 'package:navigator_2_base/pages/second_page.dart';
import 'package:navigator_2_base/pages/third_page.dart';

class PageBuilder {

  static MaterialPage build(RouteSettings settings) {
    return switch (settings.name) {
      HomePage.pageName =>const MaterialPage(child: HomePage(),key: ValueKey(HomePage.pageName)),
      SecondPage.pageName => const MaterialPage(child: SecondPage() , key: ValueKey(SecondPage.pageName)),
      ThirdPage.pageName => const MaterialPage(child: ThirdPage() , key: ValueKey(ThirdPage.pageName)),
      _ => const MaterialPage(child: ErrorPage()),
    };
  }

  static bool isValidPage(RouteSettings routeSettings) {
    return routeSettings.name == HomePage.pageName ||
        routeSettings.name == SecondPage.pageName ||
        routeSettings.name == ThirdPage.pageName;
  }
}
