import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:help_me/generated/i18n.dart';
import 'package:help_me/ui/widgets/button/index.dart';
import 'package:help_me/ui/widgets/text_filed/index.dart';

class CereateAdvertPage extends StatefulWidget {
  @override
  _CreateAdvertPageState createState() => _CreateAdvertPageState();
}

class _CreateAdvertPageState extends State<CereateAdvertPage> {
  @override
  Widget build(BuildContext context) {
    var localization = I18n.of(context);

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            localization.createAdvert,
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 30),
          // Center(
          //   child: BaseTextFiled(
          //     label: 'Name',
          //   ),
          // ),
          const SizedBox(height: 30),
          PrimaryButtonWidget(
            text: 'Vacancy',
            onPressedFunction: () => {},
          ),
          const SizedBox(height: 15),
          PrimaryButtonWidget(
            text: 'Work',
            onPressedFunction: () => {},
          ),
          const SizedBox(height: 15),
          PrimaryButtonWidget(
            text: 'Summary',
            onPressedFunction: () => {},
          ),
        ],
      ),
    );
  }
}
