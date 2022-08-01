import 'package:flutter/material.dart';
import 'package:flutter_demo_app/page_extension.dart';

class MyRouterDelegate extends RouterDelegate<List<RouteSettings>>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<List<RouteSettings>> {
  final _pages = <Page>[];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Navigator(
        key: navigatorKey, pages: List.of(_pages), onPopPage: _onPopPage);
  }

  @override
  // TODO: implement navigatorKey
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  List<Page> get currentConfiguration => List.of(_pages);

  @override
  Future<void> setNewRoutePath(List<RouteSettings> configuration) async {
    // TODO: implement setNewRoutePath
    _setPages(configuration
        .map((routeSettings) =>
            routeSettings.createMaterialPage(routeSettings.createPage()))
        .toList());
  }

  void _setPages(List<Page> pages) {
    _pages.clear();
    _pages.addAll(pages);
    notifyListeners();
  }

  bool _onPopPage(Route<dynamic> route, dynamic result) {
    _pages.removeLast();
    notifyListeners();
    return route.didPop(result);
  }

  void pushPage({required String name, dynamic arguments}) {
    final routeSettings = RouteSettings(name: name, arguments: arguments);
    _pages.add(routeSettings.createMaterialPage(routeSettings.createPage()));
    notifyListeners();
  }
}
