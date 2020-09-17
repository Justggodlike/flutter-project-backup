import 'package:flutter/cupertino.dart';
import 'package:help_me/generated/i18n.dart';
import 'package:help_me/ui/decorations/index.dart';
import 'package:help_me/ui/pages/authorization/index.dart';
import 'package:help_me/ui/widgets/authorization/index.dart';
import 'package:help_me/ui/widgets/button/index.dart';

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  TextEditingController emailOrUserNameController;
  TextEditingController passwordController;

  @override
  void initState() {
    emailOrUserNameController = TextEditingController();
    passwordController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    emailOrUserNameController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var localization = I18n.of(context);

    return AuthorizationTabBase(
      children: <Widget>[
        SizedBox(height: 20.0),
        AuthTextFieldAreaContainer(
          child: Column(
            children: <Widget>[
              AuthTextFiled(
                textController: emailOrUserNameController,
                labelText: localization.email,
                keyboardType: TextInputType.emailAddress,
                assetIconPath: Assets.mailIcon,
              ),
              AuthTextFiled(
                textController: passwordController,
                labelText: localization.password,
                keyboardType: TextInputType.visiblePassword,
                assetIconPath: Assets.passwordIcon,
              )
            ],
          ),
        ),
        SizedBox(height: 14.0),
        PrimaryButtonWidget(
          text: localization.logIn,
          onPressedFunction: () {}, //TODO: add providers handler to it
        ),
      ],
    );
  }
}
