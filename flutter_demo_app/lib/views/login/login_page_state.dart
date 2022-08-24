import 'package:flutter/material.dart';
import 'package:flutter_demo_app/extensions/app_bar_ext.dart';
import 'package:flutter_demo_app/extensions/button_style_ext.dart';
import 'package:flutter_demo_app/extensions/column_ext.dart';
import 'package:flutter_demo_app/extensions/icon_button_ext.dart';
import 'package:flutter_demo_app/extensions/icon_ext.dart';
import 'package:flutter_demo_app/extensions/scaffold_ext.dart';
import 'package:flutter_demo_app/extensions/gesture_detector_ext.dart';
import 'package:flutter_demo_app/extensions/padding_ext.dart';
import 'package:flutter_demo_app/extensions/row_ext.dart';
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
      const SizedBox(
        height: 40.0,
      ),
      [
        Text(AppLocalizations.of(context)!.loginSignIn,
            textAlign: TextAlign.start,
            style: widget.primaryBoldTextStyle(context, 18))
      ].row(),
      const SizedBox(
        height: 40.0,
      ),
      TextField(
          controller: emailController,
          decoration: InputDecoration(
              isDense: true,
              hintText: AppLocalizations.of(context)!.loginEmail,
              enabledBorder: widget.outlineInputBorder(context),
              focusedBorder: widget.outlineInputBorder(context))),
      const SizedBox(
        height: 20.0,
      ),
      TextField(
          controller: passwordController,
          obscureText: model.obscureText,
          decoration: InputDecoration(
              isDense: true,
              hintText: AppLocalizations.of(context)!.loginPassword,
              enabledBorder: widget.outlineInputBorder(context),
              focusedBorder: widget.outlineInputBorder(context),
              suffixIcon: widget.iconButton(
                  model.toggle, widget.eyeIcon(model.obscureText)))),
      const SizedBox(
        height: 40.0,
      ),
      [
        Expanded(
            child: SizedBox(
                height: 40.0,
                child: ElevatedButton(
                    style: widget.elevatedButtonStyle(),
                    onPressed: () {},
                    child: Text(
                      AppLocalizations.of(context)!.loginLogIn,
                    ))))
      ].row()
    ]
        .column()
        .padding(20)
        .gestureDetector(context)
        .appBarScaffold(widget.transparentAppBar(context));
  }
}
