import 'package:flutter/material.dart';
import 'package:help_me/core/common/index.dart';
import 'package:help_me/core/provider_models/index.dart';
import 'package:help_me/ui/notify_provider_widget.dart';
import 'package:help_me/ui/pages/index.dart';
import 'package:help_me/ui/widgets/bottom_navigation_bar/index.dart';

class ShellPage extends StatefulWidget {
  @override
  _ShellPageState createState() => _ShellPageState();
}

class _ShellPageState extends State<ShellPage> {
  @override
  Widget build(BuildContext context) {
    return NotifyProviderWidget(
      providerModel: ShellProviderModel(),
      builder: (context, model, child) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xffffffff),
            elevation: 0,
          ),
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          body: buildBody(model.selectedPage),
          bottomNavigationBar: BottomNavigationWidget(
            selectedIndex: model.selectedItemIndex,
            pages: model.pages,
            onTappedFunction: model.onTappedItem,
            orderCount: 3,
          ),
        );
      },
    );
  }

  Widget buildBody(Pages pageType) {
    switch (pageType) {
      case Pages.home:
        return HomePage();
      case Pages.create:
        return CereateAdvertPage();
      default:
        return HomePage();
    }
  }
}
