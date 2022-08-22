import 'package:flutter/material.dart';
import 'package:flutter_demo_app/extensions/button_style_ext.dart';
import 'package:flutter_demo_app/extensions/column_ext.dart';
import 'package:flutter_demo_app/extensions/icon_ext.dart';
import 'package:flutter_demo_app/extensions/scaffold_ext.dart';
import 'package:flutter_demo_app/extensions/edge_insets_geometry_ext.dart';
import 'package:flutter_demo_app/extensions/gesture_detector_ext.dart';
import 'package:flutter_demo_app/extensions/padding_ext.dart';
import 'package:flutter_demo_app/extensions/row_ext.dart';
import 'package:flutter_demo_app/extensions/text_style_ext.dart';
import 'package:flutter_demo_app/view_models/login_view_model.dart';
import 'package:flutter_demo_app/views/login/login_page.dart';
import 'package:flutter_demo_app/extensions/outline_input_border_ext.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<LoginViewModel>(context);
    // TODO: implement build
    return [
      [
        Text(AppLocalizations.of(context)!.loginSignIn,
            textAlign: TextAlign.start,
            style: GoogleFonts.poppins(textStyle: widget.blue18TextStyle()))
      ].row().padding(0, 40, 0, 40),
      TextField(
              controller: emailController,
              decoration: InputDecoration(
                  contentPadding: widget.edgeInsets(10, 0, 10, 0),
                  hintText: AppLocalizations.of(context)!.loginEmail,
                  enabledBorder: widget.greyOutlineInputBorder(),
                  focusedBorder: widget.greyOutlineInputBorder()))
          .padding(0, 0, 0, 20),
      TextField(
          controller: passwordController,
          obscureText: model.obscureText,
          decoration: InputDecoration(
              contentPadding: widget.edgeInsets(10, 0, 10, 0),
              hintText: AppLocalizations.of(context)!.loginPassword,
              enabledBorder: widget.greyOutlineInputBorder(),
              focusedBorder: widget.greyOutlineInputBorder(),
              suffixIcon: IconButton(
                  icon: widget.eyeIcon(model.obscureText),
                  onPressed: () {
                    model.toggle();
                  }))).padding(0, 0, 0, 40),
      [
        Expanded(
            child: ElevatedButton(
                style: widget.blueButtonStyle(),
                onPressed: () {},
                child: Text(
                  AppLocalizations.of(context)!.loginLogIn,
                  style: widget.whiteTextStyle(),
                )))
      ].row()
    ]
        .column()
        .padding(20, 0, 20, 0)
        .gestureDetector(context)
        .transparentScaffoldWithAppBar();
  }
}
