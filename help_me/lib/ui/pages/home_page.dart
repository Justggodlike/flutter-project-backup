import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:help_me/generated/i18n.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var localization = I18n.of(context);
    return Center(
      child: Text('Home'),
    );
  }
}
