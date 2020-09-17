import 'package:flutter/material.dart';
import 'package:help_me/generated/i18n.dart';
import 'package:help_me/ui/pages/authorization/index.dart';
import 'package:help_me/ui/pages/authorization/log_in_page.dart';

class AuthorizationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localization = I18n.of(context);
    final tabStyle = TextStyle(
      color: Color(0xff515C6F).withOpacity(0.5),
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
    );

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color.fromARGB(250, 250, 255, 255),
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          bottom: TabBar(
            tabs: <Widget>[
              Text('SignUp'),
              Text('LogIn'),
              // Text('Forgon Passwort'),
            ],
            indicatorColor: Colors.transparent,
            labelStyle: tabStyle,
            labelColor: tabStyle.color,
            unselectedLabelColor: tabStyle.color.withOpacity(0.2),
            isScrollable: true,
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            SignUpPage(),
            LogInPage(),
          ],
        ),
      ),
    );
  }
}
