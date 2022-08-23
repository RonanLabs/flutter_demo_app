import 'package:flutter/material.dart';
import 'package:flutter_demo_app/view_models/login_view_model.dart';
import 'package:flutter_demo_app/view_models/register_view_model.dart';
import 'package:flutter_demo_app/views/app/app_route_delegate.dart';
import 'package:flutter_demo_app/views/app/app_route_parser.dart';
import 'package:flutter_demo_app/view_models/blog_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  final _delegate = AppRouteDelegate();

  App({Key? key}) : super(key: key) {
    _delegate.push('/');
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => LoginViewModel()),
          ChangeNotifierProvider(create: (_) => RegisterViewModel()),
          ChangeNotifierProvider(create: (_) => BlogViewModel())
        ],
        child: MaterialApp.router(
          title: 'Flutter Demo',
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          routeInformationParser: AppRouteParser(),
          routerDelegate: _delegate,
        ));
  }
}
