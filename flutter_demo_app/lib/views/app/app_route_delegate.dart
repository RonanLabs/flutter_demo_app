import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_app/extensions/app_widget_ext.dart';

class AppRouteDelegate extends RouterDelegate<String>
    with PopNavigatorRouterDelegateMixin<String>, ChangeNotifier {
  final _stack = <String>[];

  static AppRouteDelegate of(BuildContext context) {
    return Router.of(context).routerDelegate as AppRouteDelegate;
  }

  @override
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  String? get currentConfiguration => _stack.isNotEmpty ? _stack.last : null;

  void push(String newRoute) {
    _stack.add(newRoute);
    notifyListeners();
  }

  @override
  Future<void> setNewRoutePath(String configuration) async {
    _stack.clear();
    _stack.add(configuration);
  }

  bool _onPopPage(Route<dynamic> route, dynamic result) {
    _stack.removeLast();
    notifyListeners();
    return route.didPop(result);
  }

  Page _getPage(String url) {
    final pathSegments = Uri.parse(url).pathSegments;
    final page = pathSegments.isEmpty ? url : pathSegments[0];
    return MaterialPage(child: page.getWidget(pathSegments));
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('${describeIdentity(this)}.stack: $_stack');
    return Navigator(
      key: navigatorKey,
      onPopPage: _onPopPage,
      pages: [for (final url in _stack) _getPage(url)],
    );
  }
}
