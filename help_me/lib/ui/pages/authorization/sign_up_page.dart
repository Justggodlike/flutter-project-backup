import 'package:flutter/material.dart';
import 'package:help_me/generated/i18n.dart';
import 'package:help_me/ui/decorations/index.dart';
import 'package:help_me/ui/pages/authorization/authorization_tab_base.dart';
import 'package:help_me/ui/widgets/authorization/index.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var localozation = I18n.of(context);

    return AuthorizationTabBase(
      children: <Widget>[
        SizedBox(height: 20.0),
        AuthTextFieldAreaContainer(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              AuthTextFiled(
                labelText: localozation.email,
                keyboardType: TextInputType.emailAddress,
                assetIconPath: Assets.mailIcon,
              ),
              AuthTextFiled(
                labelText: localozation.username,
                assetIconPath: Assets.profileIcon,
              ),
              AuthTextFiled(
                labelText: localozation.password,
                keyboardType: TextInputType.visiblePassword,
                assetIconPath: Assets.passwordIcon,
              ),
            ],
          ),
        ),
        SizedBox(height: 14.0),
        FlatButton(
          color: Colors.pink,
        ),
      ],
    );
  }
}
