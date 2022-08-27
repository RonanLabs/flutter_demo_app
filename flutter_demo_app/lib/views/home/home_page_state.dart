import 'package:flutter/material.dart';
import 'package:flutter_demo_app/extensions/button_style_ext.dart';
import 'package:flutter_demo_app/extensions/column_ext.dart';
import 'package:flutter_demo_app/extensions/expanded_ext.dart';
import 'package:flutter_demo_app/extensions/gesture_detector_ext.dart';
import 'package:flutter_demo_app/extensions/padding_ext.dart';
import 'package:flutter_demo_app/extensions/row_ext.dart';
import 'package:flutter_demo_app/extensions/sized_box_ext.dart';
import 'package:flutter_demo_app/extensions/text_style_ext.dart';
import 'package:flutter_demo_app/extensions/scaffold_ext.dart';
import 'package:flutter_demo_app/views/app/app_page.dart';
import 'package:flutter_demo_app/views/app/app_route_delegate.dart';
import 'package:flutter_demo_app/views/home/home_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_demo_app/extensions/icon_ext.dart';

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return [
      widget.selfSizedBox(40.0),
      context.homeIcon(),
      widget.selfSizedBox(20.0),
      Text(
        AppLocalizations.of(context)!.homeTitle,
        style: context.titleTextStyle(),
      ),
      widget.selfSizedBox(20.0),
      Text(
        AppLocalizations.of(context)!.homeSubtitle,
      ),
      widget.selfSizedBox(40.0),
      [
        ElevatedButton(
            style: context.elevatedButtonStyle(),
            onPressed: () =>
                AppRouteDelegate.of(context).push('/${AppPage.loginPage}'),
            child: Text(
              AppLocalizations.of(context)!.homeLogIn,
            )).sizedBox(40.0).expanded()
      ].row(),
      widget.selfSizedBox(20.0),
      [
        OutlinedButton(
            style: context.outlineButtonStyle(),
            onPressed: () =>
                AppRouteDelegate.of(context).push('/${AppPage.registerPage}'),
            child: Text(
              AppLocalizations.of(context)!.homeSignUp,
            )).sizedBox(40.0).expanded()
      ].row()
    ].column().padding(20).gestureDetector(context).scaffold();
  }
}
