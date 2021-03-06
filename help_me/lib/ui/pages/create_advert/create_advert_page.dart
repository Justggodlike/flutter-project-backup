import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:help_me/core/common/index.dart';
import 'package:help_me/core/services/dependency_service.dart';
import 'package:help_me/generated/i18n.dart';
import 'package:help_me/ui/widgets/button/index.dart';

class CreateAdvertPage extends StatefulWidget {
  @override
  _CreateAdvertPageState createState() => _CreateAdvertPageState();
}

class _CreateAdvertPageState extends State<CreateAdvertPage> {
  @override
  Widget build(BuildContext context) {
    var localization = I18n.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            localization.createAdvert,
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 60),
          PrimaryButtonWidget(
            text: 'Vacancy',
            onPressedFunction: () => {
              navigationService.navigateTo(Pages.createVacancy),
            },
          ),
          const SizedBox(height: 15),
          PrimaryButtonWidget(
            text: 'Work',
            onPressedFunction: () => {
              navigationService.navigateTo(Pages.createWork),
            },
          ),
          const SizedBox(height: 15),
          PrimaryButtonWidget(
            text: 'Summary',
            onPressedFunction: () => {
              navigationService.navigateTo(Pages.createSummary),
            },
          ),
          SizedBox(height: 10),
          Container(
              height: 270,
              width: 270,
              child: SvgPicture.asset('assets/owl_image.svg')),
        ],
      ),
    );
  }
}
