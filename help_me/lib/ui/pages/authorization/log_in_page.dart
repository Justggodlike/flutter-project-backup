import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:help_me/core/common/index.dart';
import 'package:help_me/core/services/dependency_service.dart';
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
  TextEditingController emailController;
  TextEditingController passwordController;

  bool isLoading = false;

  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var localization = I18n.of(context);

    if (isLoading) {
      return Container(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return Form(
        key: formKey,
        child: AuthorizationTabBase(
          children: <Widget>[
            SizedBox(height: 40.0), //TODO: add insets as a const!!!
            AuthTextFieldAreaContainer(
              child: Column(
                children: <Widget>[
                  AuthTextFiled(
                    validator: (val) {
                      return RegExp(//TODO add to const validator values
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(val)
                          ? null
                          : "Please Enter Correct Email";
                    },
                    textController: emailController,
                    labelText: localization.email,
                    keyboardType: TextInputType.emailAddress,
                    assetIconPath: Assets.mailIcon,
                  ),
                  AuthTextFiled(
                    validator: (val) {
                      return val.length < 6
                          ? "Enter Password 6+ characters"
                          : null;
                    },
                    textController: passwordController,
                    labelText: localization.password,
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    assetIconPath: Assets.passwordIcon,
                  )
                ],
              ),
            ),
            SizedBox(height: 14.0),
            PrimaryButtonWidget(
              text: localization.logIn,
              onPressedFunction: () async =>
                  //loginButtonPressHandler(), //TODO: add providers handler to it
                  signIn(),
            ),
          ],
        ),
      );
    }
  }

  Future loginButtonPressHandler() async {
    var creds = 'qwer';

    if (emailController.text != creds && passwordController.text != creds) {
      await showDialog(
        context: context,
        builder: (_) => AlertDialog(
          elevation: 10.0,
          title: Text('Alert'),
          content: Text('Username or password is incorrect (try: qwer/qwer)'),
        ),
      );
    } else {
      await navigationService.navigateWithReplacementTo(Pages.shell);
    }
  }

  signIn() async {
    if (formKey.currentState.validate()) {
      setState(() {
        isLoading = true;
      });

      await authorizatoinService
          .logInWithEmailAndPassword(
              emailController.text, passwordController.text)
          .then((result) async {
        if (result != null) {
          navigationService.navigateWithReplacementTo(Pages.shell);
        } else {
          setState(() {
            isLoading = false;
            //show snackbar
          });
        }
      });
    }
  }
}
