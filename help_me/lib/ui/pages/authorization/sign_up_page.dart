import 'package:flutter/material.dart';
import 'package:help_me/generated/i18n.dart';
import 'package:help_me/ui/decorations/index.dart';
import 'package:help_me/ui/pages/authorization/authorization_tab_base.dart';
import 'package:help_me/ui/widgets/authorization/index.dart';
import 'package:help_me/ui/widgets/button/index.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var localization = I18n.of(context);

    return AuthorizationTabBase(
      children: <Widget>[
        SizedBox(height: 19.0), //TODO: add insets as a const!!!
        AuthTextFieldAreaContainer(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              AuthTextFiled(
                labelText: localization.email,
                keyboardType: TextInputType.emailAddress,
                assetIconPath: Assets.mailIcon,
              ),
              AuthTextFiled(
                labelText: localization.username,
                assetIconPath: Assets.profileIcon,
              ),
              AuthTextFiled(
                labelText: localization.password,
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                assetIconPath: Assets.passwordIcon,
              ),
            ],
          ),
        ),
        SizedBox(height: 14.0), //TODO: add insets as a const!!!
        SizedBox(height: 14.0), //TODO: add insets as a const!!!
        PrimaryButtonWidget(
          text: localization.signUp,
          onPressedFunction: () {}, //TODO: add providers handler to it
        ),
      ],
    );
  }
}
