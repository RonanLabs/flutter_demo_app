import 'package:flutter/material.dart';
import 'package:flutter_demo_app/extensions/app_bar_ext.dart';
import 'package:flutter_demo_app/extensions/button_style_ext.dart';
import 'package:flutter_demo_app/extensions/circle_avatar_ext.dart';
import 'package:flutter_demo_app/extensions/column_ext.dart';
import 'package:flutter_demo_app/extensions/gesture_detector_ext.dart';
import 'package:flutter_demo_app/extensions/icon_button_ext.dart';
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
      const SizedBox(
        height: 40.0,
      ),
      [
        Text(AppLocalizations.of(context)!.registerCreateAccount,
            textAlign: TextAlign.start,
            style: widget.primaryBoldTextStyle(context, 18))
      ].row(),
      const SizedBox(
        height: 40.0,
      ),
      Stack(
        alignment: const AlignmentDirectional(1, 1),
        children: [
          widget.personalCircleAvatar(50.0, PlaceholderHelper.personalImage),
          widget.cameraCircleAvatar(context, 20.0, () {})
        ],
      ),
      const SizedBox(
        height: 40.0,
      ),
      TextField(
          controller: emailController,
          decoration: InputDecoration(
              isDense: true,
              hintText: AppLocalizations.of(context)!.registerEmail,
              enabledBorder: widget.outlineInputBorder(context),
              focusedBorder: widget.outlineInputBorder(context))),
      const SizedBox(
        height: 20.0,
      ),
      TextField(
          controller: passwordController,
          obscureText: model.passwordObscureText,
          decoration: InputDecoration(
              isDense: true,
              hintText: AppLocalizations.of(context)!.registerPassword,
              enabledBorder: widget.outlineInputBorder(context),
              focusedBorder: widget.outlineInputBorder(context),
              suffixIcon: widget.iconButton(model.passwordToggle,
                  widget.eyeIcon(model.passwordObscureText)))),
      const SizedBox(
        height: 20.0,
      ),
      TextField(
          controller: confirmPasswordController,
          obscureText: model.confirmPasswordObscureText,
          decoration: InputDecoration(
              isDense: true,
              hintText: AppLocalizations.of(context)!.registerConfirmPassword,
              enabledBorder: widget.outlineInputBorder(context),
              focusedBorder: widget.outlineInputBorder(context),
              suffixIcon: widget.iconButton(model.confirmPasswordToggle,
                  widget.eyeIcon(model.confirmPasswordObscureText)))),
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
                      AppLocalizations.of(context)!.registerSignUp,
                    ))))
      ].row()
    ]
        .column()
        .padding(20)
        .gestureDetector(context)
        .appBarScaffold(widget.transparentAppBar(context));
  }
}
