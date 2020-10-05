import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:help_me/core/common/index.dart';
import 'package:help_me/core/services/index.dart';
import 'package:help_me/generated/i18n.dart';
import 'package:help_me/ui/decorations/index.dart';
import 'package:help_me/ui/widgets/advert_list/index.dart';

class SearchPage extends StatelessWidget {
  List itemsList = [1, 2, 3];

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
      body: ListView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(0),
        physics: BouncingScrollPhysics(),
        itemCount: itemsList.length,
        itemBuilder: (context, index) {
          final item = itemsList[index];
          return SizedBox(
            width: 10,
            height: 20,
            child: const DecoratedBox(
              decoration: const BoxDecoration(color: Colors.red),
            ),
          );
        },
      ),
    );
  }
}
