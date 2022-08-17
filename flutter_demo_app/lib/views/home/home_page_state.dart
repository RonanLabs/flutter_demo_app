import 'package:flutter/material.dart';
import 'package:flutter_demo_app/extensions/app_column_ext.dart';
import 'package:flutter_demo_app/extensions/app_container_ext.dart';
import 'package:flutter_demo_app/extensions/app_gesture_detector_ext.dart';
import 'package:flutter_demo_app/extensions/app_padding_ext.dart';
import 'package:flutter_demo_app/extensions/app_row_ext.dart';
import 'package:flutter_demo_app/helpers/color_helper.dart';
import 'package:flutter_demo_app/views/app/app_route_delegate.dart';
import 'package:flutter_demo_app/views/home/home_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return [
      Icon(
        Icons.home,
        size: 100,
        color: ColorHelper.blue,
      ),
      Text(
        AppLocalizations.of(context)!.homeTitle,
        style: GoogleFonts.poppins(
            textStyle: TextStyle(
                color: ColorHelper.blue, fontWeight: FontWeight.w800)),
      ).padding(0, 20, 0, 10),
      Text(
        AppLocalizations.of(context)!.homeSubtitle,
      ),
      [
        Expanded(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: ColorHelper.blue, shape: const StadiumBorder()),
                onPressed: () {},
                child: Text(
                  AppLocalizations.of(context)!.homeLogIn,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )).padding(0, 40, 0, 0))
      ].row(),
      [
        Expanded(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  side: BorderSide(
                    color: ColorHelper.grey,
                    width: 1,
                  ),
                  shape: const StadiumBorder(),
                ),
                onPressed: () => AppRouteDelegate.of(context).push('/register'),
                child: Text(
                  AppLocalizations.of(context)!.homeSignUp,
                  style: TextStyle(
                      color: ColorHelper.blue, fontWeight: FontWeight.bold),
                )).padding(0, 20, 0, 0))
      ].row()
    ].column().padding(20, 50, 20, 0).gestureDetector(context).rootContainer();
  }
}
