import 'package:flutter/material.dart';
import 'package:help_me/core/common/pages.dart';
import 'package:help_me/core/services/index.dart';
import 'package:help_me/generated/i18n.dart';
import 'package:help_me/ui/decorations/index.dart';
import 'package:help_me/ui/pages/authorization/authorization_tab_base.dart';
import 'package:help_me/ui/widgets/authorization/index.dart';
import 'package:help_me/ui/widgets/button/index.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var emailController;
  var userNameController;
  var passwordController;

  final formKey = GlobalKey<FormState>();
  bool isLoading = false;

  @override
  void initState() {
    emailController = TextEditingController();
    userNameController = TextEditingController();
    passwordController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    userNameController.dispose();
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
            SizedBox(height: 19.0), //TODO: add insets as a const!!!
            AuthTextFieldAreaContainer(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  AuthTextFiled(
                    validator: (val) {
                      return RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(val)
                          ? null
                          : "Enter correct email";
                    }, //TODO я это у индуса спиздил надо разобраться как работает
                    textController: emailController,
                    labelText: localization.email,
                    keyboardType: TextInputType.emailAddress,
                    assetIconPath: Assets.mailIcon,
                  ),
                  AuthTextFiled(
                    validator: (val) {
                      return val.isEmpty || val.length < 3
                          ? "Enter Username 3+ characters"
                          : null;
                    },
                    textController: userNameController,
                    labelText: localization.username,
                    assetIconPath: Assets.profileIcon,
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
                  ),
                ],
              ),
            ),
            SizedBox(height: 14.0), //TODO: add insets as a const!!!
            SizedBox(height: 14.0), //TODO: add insets as a const!!!
            PrimaryButtonWidget(
              text: localization.signUp,
              onPressedFunction: () {
                signUp();
              }, //TODO: add providers handler to it
            ),
          ],
        ),
      );
    }
  }

  signUp() async {
    Map<String, String> userInfo = {
      "userName": userNameController.text,
      "userEmail": emailController.text
    };

    if (formKey.currentState.validate()) {
      setState(() {
        isLoading = true;
      });
    }
    await authorizatoinService
        .signUpWithEmailAndPassword(
            emailController.text, passwordController.text)
        .then(
      (result) async {
        if (result != null) await dataAccessService.uploadUserInfo(userInfo);
      },
    );

    navigationService.navigateWithReplacementTo(Pages.shell);
  }
}
