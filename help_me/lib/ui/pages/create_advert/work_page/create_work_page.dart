import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:help_me/core/services/index.dart';
import 'package:help_me/generated/i18n.dart';
import 'package:help_me/ui/decorations/index.dart';
import 'package:help_me/core/common/index.dart';
import 'package:help_me/ui/widgets/button/index.dart';
import 'package:help_me/ui/widgets/text_filed/index.dart';

class CreateWorkPage extends StatefulWidget {
  @override
  _CreateWorkPageState createState() => _CreateWorkPageState();
}

class _CreateWorkPageState extends State<CreateWorkPage> {
  @override
  Widget build(BuildContext context) {
    var localization = I18n.of(context);
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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              localization.enterWorkName,
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 30),
            BaseTextFiled(
              hint: 'Enter name',
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 47.0,
                  width: 230.0,
                  child: PrimaryButtonWidget(
                    text: 'Next',
                    onPressedFunction: () =>
                        {navigationService.navigateTo(Pages.workCategories)},
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
