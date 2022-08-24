import 'package:flutter/material.dart';
import 'package:flutter_demo_app/extensions/button_style_ext.dart';
import 'package:flutter_demo_app/extensions/column_ext.dart';
import 'package:flutter_demo_app/extensions/gesture_detector_ext.dart';
import 'package:flutter_demo_app/extensions/padding_ext.dart';
import 'package:flutter_demo_app/extensions/row_ext.dart';
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
      const SizedBox(
        height: 40.0,
      ),
      widget.homeIcon(context, 100.0),
      const SizedBox(
        height: 20.0,
      ),
      Text(
        AppLocalizations.of(context)!.homeTitle,
        style: widget.primaryBoldTextStyle(context, 18),
      ),
      const SizedBox(
        height: 20.0,
      ),
      Text(
        AppLocalizations.of(context)!.homeSubtitle,
      ),
      const SizedBox(
        height: 40.0,
      ),
      [
        Expanded(
            child: SizedBox(
                height: 40.0,
                child: ElevatedButton(
                    style: widget.elevatedButtonStyle(),
                    onPressed: () => AppRouteDelegate.of(context)
                        .push('/${AppPage.loginPage}'),
                    child: Text(
                      AppLocalizations.of(context)!.homeLogIn,
                    ))))
      ].row(),
      const SizedBox(
        height: 20.0,
      ),
      [
        Expanded(
            child: SizedBox(
                height: 40.0,
                child: OutlinedButton(
                    style: widget.outlineButtonStyle(context),
                    onPressed: () => AppRouteDelegate.of(context)
                        .push('/${AppPage.registerPage}'),
                    child: Text(
                      AppLocalizations.of(context)!.homeSignUp,
                      style: widget.primaryTextStyle(context),
                    ))))
      ].row()
    ].column().padding(20).gestureDetector(context).scaffold();
  }
}
