import 'package:flutter/material.dart';
import 'package:help_me/generated/i18n.dart';
import 'package:help_me/ui/pages/authorization/authorization_tab_base.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var localozation = I18n.of(context);

    return AuthorizationTabBase(children: <Widget>[
      SizedBox(height: 20.0),
    ]);
  }
}
