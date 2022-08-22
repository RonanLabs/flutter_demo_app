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
import 'package:google_fonts/google_fonts.dart';

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return [
      widget.homeIcon().padding(0, 40, 0, 20),
      Text(
        AppLocalizations.of(context)!.homeTitle,
        style: GoogleFonts.poppins(textStyle: widget.blue18TextStyle()),
      ).padding(0, 0, 0, 20),
      Text(
        AppLocalizations.of(context)!.homeSubtitle,
      ).padding(0, 0, 0, 40),
      [
        Expanded(
            child: ElevatedButton(
                style: widget.blueButtonStyle(),
                onPressed: () =>
                    AppRouteDelegate.of(context).push('/${AppPage.loginPage}'),
                child: Text(
                  AppLocalizations.of(context)!.homeLogIn,
                  style: widget.whiteTextStyle(),
                )))
      ].row().padding(0, 0, 0, 20),
      [
        Expanded(
            child: ElevatedButton(
                style: widget.greyButtonStyle(),
                onPressed: () => AppRouteDelegate.of(context)
                    .push('/${AppPage.registerPage}'),
                child: Text(
                  AppLocalizations.of(context)!.homeSignUp,
                  style: widget.blueTextStyle(),
                )))
      ].row()
    ].column().padding(20, 0, 20, 0).gestureDetector(context).scaffold();
  }
}
