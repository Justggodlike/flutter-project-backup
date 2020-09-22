import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:help_me/generated/i18n.dart';
import 'package:help_me/ui/widgets/text_filed/index.dart';

class CereateAdvertPage extends StatefulWidget {
  @override
  _CreateAdvertPageState createState() => _CreateAdvertPageState();
}

class _CreateAdvertPageState extends State<CereateAdvertPage> {
  @override
  Widget build(BuildContext context) {
    var localization = I18n.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            localization.createAdvert,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        BaseTextFiled(),
        const SizedBox(height: 29)
      ],
    );
  }
}
