import 'package:flutter/material.dart';
import 'package:help_me/generated/i18n.dart';

class AuthorizationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localization = I18n.of(context);

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color.fromARGB(100, 250, 25, 175),
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color.fromARGB(100, 200, 20, 150),
          bottom: TabBar(
            tabs: <Widget>[
              Text('SignIn'),
              Text('LogIn'),
              Text('Forgon Passwort'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[],
        ),
      ),
    );
  }
}
