import 'package:flutter/material.dart';
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
        home: MyHomePage(title: 'HelpMe'),
        localizationsDelegates: [i18n],
        supportedLocales: i18n.supportedLocales,
        localeResolutionCallback: i18n.resolution(
          fallback: const Locale('en', 'US'),
        ));
  }
}
