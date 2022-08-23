import 'package:flutter/material.dart';
import 'package:flutter_demo_app/extensions/button_style_ext.dart';
import 'package:flutter_demo_app/extensions/circle_avatar_ext.dart';
import 'package:flutter_demo_app/extensions/column_ext.dart';
import 'package:flutter_demo_app/extensions/container_ext.dart';
import 'package:flutter_demo_app/extensions/gesture_detector_ext.dart';
import 'package:flutter_demo_app/extensions/icon_ext.dart';
import 'package:flutter_demo_app/extensions/padding_ext.dart';
import 'package:flutter_demo_app/extensions/row_ext.dart';
import 'package:flutter_demo_app/extensions/text_style_ext.dart';
import 'package:flutter_demo_app/helpers/placeholder_helper.dart';
import 'package:flutter_demo_app/view_models/register_view_model.dart';
import 'package:flutter_demo_app/views/register/register_page.dart';
import 'package:flutter_demo_app/extensions/outline_input_border_ext.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_demo_app/extensions/scaffold_ext.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<RegisterViewModel>(context);
    // TODO: implement build
    return [
      [
        Text(AppLocalizations.of(context)!.registerCreateAccount,
            textAlign: TextAlign.start,
            style: GoogleFonts.poppins(textStyle: widget.blue18TextStyle()))
      ].row().padding(0, 40, 0, 40),
      Stack(
        alignment: const AlignmentDirectional(1, 1),
        children: [
          widget.circleContainer(PlaceholderHelper.personalIcon),
          widget.cameraCircleAvatar(() {})
        ],
      ).padding(0, 0, 0, 40),
      TextField(
              controller: emailController,
              decoration: InputDecoration(
                  isDense: true,
                  hintText: AppLocalizations.of(context)!.registerEmail,
                  enabledBorder: widget.greyOutlineInputBorder(),
                  focusedBorder: widget.greyOutlineInputBorder()))
          .padding(0, 0, 0, 20),
      TextField(
              controller: passwordController,
              obscureText: model.passwordObscureText,
              decoration: InputDecoration(
                  isDense: true,
                  hintText: AppLocalizations.of(context)!.registerPassword,
                  enabledBorder: widget.greyOutlineInputBorder(),
                  focusedBorder: widget.greyOutlineInputBorder(),
                  suffixIcon: IconButton(
                      icon: widget.eyeIcon(model.passwordObscureText),
                      onPressed: model.passwordToggle)))
          .padding(0, 0, 0, 20),
      TextField(
              controller: confirmPasswordController,
              obscureText: model.confirmPasswordObscureText,
              decoration: InputDecoration(
                  isDense: true,
                  hintText:
                      AppLocalizations.of(context)!.registerConfirmPassword,
                  enabledBorder: widget.greyOutlineInputBorder(),
                  focusedBorder: widget.greyOutlineInputBorder(),
                  suffixIcon: IconButton(
                      icon: widget.eyeIcon(model.confirmPasswordObscureText),
                      onPressed: model.confirmPasswordToggle)))
          .padding(0, 0, 0, 40),
      [
        Expanded(
            child: ElevatedButton(
                style: widget.blueButtonStyle(),
                onPressed: () {},
                child: Text(
                  AppLocalizations.of(context)!.registerSignUp,
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
