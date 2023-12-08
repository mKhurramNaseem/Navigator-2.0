import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:navigator_2_base/navigation/page_builder.dart';
import 'package:navigator_2_base/pages/error_page.dart';

class MyRouteInformationParser extends RouteInformationParser<RouteSettings> {
  @override
  Future<RouteSettings> parseRouteInformation(
      RouteInformation routeInformation) {
    RouteSettings routeSettings =
        RouteSettings(name: routeInformation.uri.toString());
    if (PageBuilder.isValidPage(routeSettings)) {
      return SynchronousFuture(routeSettings);
    } else {
      return SynchronousFuture(const RouteSettings(name: ErrorPage.pageName));
    }
  }

  @override
  RouteInformation? restoreRouteInformation(RouteSettings configuration) {
    if (PageBuilder.isValidPage(configuration)) {
      return RouteInformation(uri: Uri.parse(configuration.name!));
    }
    return RouteInformation(uri: Uri.parse(ErrorPage.pageName));
  }
}
