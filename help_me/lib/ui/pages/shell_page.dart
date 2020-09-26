import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:help_me/core/common/index.dart';
import 'package:help_me/core/provider_models/index.dart';
import 'package:help_me/ui/decorations/index.dart';
import 'package:help_me/ui/notify_provider_widget.dart';
import 'package:help_me/ui/pages/index.dart';
import 'package:help_me/ui/pages/profile_page/index.dart';
import 'package:help_me/ui/widgets/bottom_navigation_bar/index.dart';
import 'package:help_me/ui/widgets/index.dart';

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
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(40.0), // here the desired height
            child: AppBar(
              backgroundColor: Color.fromARGB(255, 245, 245, 245),
              elevation: 0,
              actions: [
                _buildAction(
                  imageAssetPath: Assets.messageIcon,
                  onIconPressedFuction: () {}, //TODO get from provider
                  badgeValue: 5, //TODO get from provider
                ),
              ],
            ),
          ),
          backgroundColor: Color.fromARGB(255, 245, 245, 245),
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

  Widget _buildAction({
    String imageAssetPath,
    Function onIconPressedFuction,
    int badgeValue,
  }) {
    return IconButton(
      icon: IconWithBageWidget(
        badgeValue: badgeValue,
        badgeTextStyle: Theme.of(context).textTheme.overline,
        icon: SvgPicture.asset(imageAssetPath),
      ),
      onPressed: onIconPressedFuction,
    );
  }

  Widget buildBody(Pages pageType) {
    switch (pageType) {
      case Pages.home:
        return HomePage();
      case Pages.create:
        return CreateAdvertPage();
      case Pages.profile:
        return ProfilePage();
      default:
        return HomePage();
    }
  }
}
