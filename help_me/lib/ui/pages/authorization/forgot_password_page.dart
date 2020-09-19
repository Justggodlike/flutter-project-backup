import 'package:flutter/material.dart';
import 'package:help_me/generated/i18n.dart';
import 'package:help_me/ui/decorations/index.dart';
import 'package:help_me/ui/pages/authorization/index.dart';
import 'package:help_me/ui/widgets/authorization/auth_text_filed.dart';
import 'package:help_me/ui/widgets/authorization/index.dart';
import 'package:help_me/ui/widgets/button/index.dart';

class ForgotPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var localization = I18n.of(context);

    return AuthorizationTabBase(
      children: <Widget>[
        SizedBox(
          height: 40, //TODO: add insets as a const!!!
        ),
        AuthTextFieldAreaContainer(
          child: AuthTextFiled(
            labelText: localization.email,
            keyboardType: TextInputType.emailAddress,
            assetIconPath: Assets.mailIcon,
          ),
        ),
        SizedBox(height: 14.0), //TODO: add insets as a const!!!
        PrimaryButtonWidget(
          text: localization.send,
          onPressedFunction: () {}, //TODO: add providers handler to it
        ),
      ],
    );
  }
}
