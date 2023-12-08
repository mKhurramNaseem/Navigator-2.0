import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:navigator_2_base/navigation/page_builder.dart';
import 'package:navigator_2_base/pages/error_page.dart';
import 'package:navigator_2_base/pages/home_page.dart';

class MyRouterDelegate extends RouterDelegate<RouteSettings>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  final List _stack = <RouteSettings>[
    const RouteSettings(name: HomePage.pageName)
  ];

  static MyRouterDelegate of(BuildContext context) {
    var delegate = Router.of(context).routerDelegate ;
    assert(delegate is MyRouterDelegate);
    return delegate as MyRouterDelegate;
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      pages: [
        for (RouteSettings routeSettings in _stack)
          PageBuilder.build(routeSettings)
      ],
      key: navigatorKey,
      onPopPage: onPopPage,
    );
  }

  @override
  GlobalKey<NavigatorState>? get navigatorKey => GlobalKey<NavigatorState>();

  @override
  RouteSettings? get currentConfiguration => _stack.isNotEmpty ? _stack.last : const RouteSettings(name: ErrorPage.pageName);

  bool onPopPage(Route<dynamic> route, dynamic data) {
    if (_stack.isNotEmpty) {
      _stack.remove(_stack.last);
      notifyListeners();
    }
    return route.didPop(data);
  }

  @override
  Future<void> setNewRoutePath(configuration) {
    _stack..clear()..add(configuration);
    return SynchronousFuture(null);
  }

  push(RouteSettings routeSettings) {
    _stack.add(routeSettings);
    notifyListeners();
  }

  dynamic pop(RouteSettings routeSettings) {
    if (_stack.isNotEmpty) {
      _stack.remove(_stack.last);
      notifyListeners();
    }
    return routeSettings;
  }
}
