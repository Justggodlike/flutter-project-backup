import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:help_me/core/services/index.dart';
import 'package:help_me/ui/decorations/index.dart';

class CreateSummaryPage extends StatefulWidget {
  @override
  _CreateSummaryPageState createState() => _CreateSummaryPageState();
}

class _CreateSummaryPageState extends State<CreateSummaryPage> {
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
        child: Text('Symmary create page'),
      ),
    );
  }
}
