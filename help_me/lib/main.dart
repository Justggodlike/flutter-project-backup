import 'package:flare_splash_screen/flare_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:help_me/ui/decorations/assets.dart';
import 'package:help_me/ui/pages/index.dart';

import 'generated/i18n.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final GeneratedLocalizationsDelegate i18n = I18n.delegate;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SplashScreen.navigate(
          name: Assets.splashLoader,
          next: (_) => HomePage(
            title: 'HelpMe',
          ),
          until: () => Future.delayed(Duration(seconds: 5)),
          startAnimation: '1',
        ),
        localizationsDelegates: [i18n],
        supportedLocales: i18n.supportedLocales,
        localeResolutionCallback: i18n.resolution(
          fallback: const Locale('en', 'US'),
        ));
  }
}
