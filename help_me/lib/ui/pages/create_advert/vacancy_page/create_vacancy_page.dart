import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:help_me/core/services/index.dart';
import 'package:help_me/ui/decorations/index.dart';

class CreateVacancyPage extends StatefulWidget {
  @override
  _CreateVacancyPageState createState() => _CreateVacancyPageState();
}

class _CreateVacancyPageState extends State<CreateVacancyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xffffffffff),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              Assets.closeIcon,
              color: Colors.red,
              height: 18.0,
            ),
            onPressed: () => navigationService.goBack(),
          )
        ],
      ),
      backgroundColor: Color(0xffffffffff),
      body: Center(
        child: Text('Vacancy create page'),
      ),
    );
  }
}
