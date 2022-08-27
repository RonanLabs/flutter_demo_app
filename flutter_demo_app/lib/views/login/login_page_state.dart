import 'package:flutter/material.dart';
import 'package:flutter_demo_app/extensions/app_bar_ext.dart';
import 'package:flutter_demo_app/extensions/button_style_ext.dart';
import 'package:flutter_demo_app/extensions/column_ext.dart';
import 'package:flutter_demo_app/extensions/expanded_ext.dart';
import 'package:flutter_demo_app/extensions/icon_button_ext.dart';
import 'package:flutter_demo_app/extensions/icon_ext.dart';
import 'package:flutter_demo_app/extensions/scaffold_ext.dart';
import 'package:flutter_demo_app/extensions/gesture_detector_ext.dart';
import 'package:flutter_demo_app/extensions/padding_ext.dart';
import 'package:flutter_demo_app/extensions/row_ext.dart';
import 'package:flutter_demo_app/extensions/sized_box_ext.dart';
import 'package:flutter_demo_app/extensions/text_style_ext.dart';
import 'package:flutter_demo_app/view_models/login_view_model.dart';
import 'package:flutter_demo_app/views/login/login_page.dart';
import 'package:flutter_demo_app/extensions/outline_input_border_ext.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<LoginViewModel>(context);
    // TODO: implement build
    return [
      widget.selfSizedBox(40.0),
      [
        Text(AppLocalizations.of(context)!.loginSignIn,
            textAlign: TextAlign.start, style: context.titleTextStyle())
      ].row(),
      widget.selfSizedBox(40.0),
      TextField(
          controller: emailController,
          decoration: InputDecoration(
              isDense: true,
              hintText: AppLocalizations.of(context)!.loginEmail,
              enabledBorder: context.outlineInputBorder(),
              focusedBorder: context.outlineInputBorder())),
      widget.selfSizedBox(20.0),
      TextField(
          controller: passwordController,
          obscureText: model.obscureText,
          decoration: InputDecoration(
              isDense: true,
              hintText: AppLocalizations.of(context)!.loginPassword,
              enabledBorder: context.outlineInputBorder(),
              focusedBorder: context.outlineInputBorder(),
              suffixIcon: widget.iconButton(
                  model.toggle, context.eyeIcon(model.obscureText)))),
      widget.selfSizedBox(40.0),
      [
        ElevatedButton(
            style: context.elevatedButtonStyle(),
            onPressed: () {},
            child: Text(
              AppLocalizations.of(context)!.loginLogIn,
            )).sizedBox(40.0).expanded()
      ].row()
    ]
        .column()
        .padding(20)
        .gestureDetector(context)
        .appBarScaffold(context.backButtonAppBar());
  }
}
