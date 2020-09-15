import 'package:flutter/material.dart';
import 'package:help_me/core/common/index.dart';
import 'package:help_me/core/models/index.dart';
import 'package:help_me/core/services/index.dart';
import 'package:help_me/generated/i18n.dart';
import 'package:help_me/ui/pages/authorization/authorization_tab_base.dart';

class SignInPage extends StatelessWidget {
  final List<AuthRichTextSpanModel> _bottomText = [
    AuthRichTextSpanModel(
      text: 'By creating an account, you agree to our Privacy Policy \n',
      isTappable: false,
    ),
    AuthRichTextSpanModel(
      text: 'Terms of Service',
      isTappable: true,
      onTap: () async => await navigationService.navigateTo(Pages.home),
    ),
    AuthRichTextSpanModel(
      text: ' and ',
      isTappable: false,
    ),
    AuthRichTextSpanModel(
      text: 'Privacy Policy',
      isTappable: true,
      onTap: () async => await navigationService.navigateTo(Pages.home),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var localozation = I18n.of(context);

    return AuthorizationTabBase(children: <Widget>[
      SizedBox(height: 20.0),
      //AuthTextFiled
    ]);
  }
}
