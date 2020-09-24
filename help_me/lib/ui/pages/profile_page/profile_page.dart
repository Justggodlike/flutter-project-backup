import 'package:flutter/material.dart';
import 'package:help_me/core/common/index.dart';
import 'package:help_me/core/services/index.dart';
import 'package:help_me/generated/i18n.dart';
import 'package:help_me/ui/decorations/index.dart';
import 'package:help_me/ui/widgets/button/index.dart';
import 'package:help_me/ui/widgets/menu/index.dart';
import 'package:help_me/ui/widgets/profile/index.dart';

class ProfilePage extends StatelessWidget {
  final List<MenuItemModel> menuItems = [
    MenuItemModel(
      title: 'Some Title',
      svgIconPath: Assets.mailIcon,
    ),
    MenuItemModel(
      title: 'Some Title',
      svgIconPath: Assets.mailIcon,
    ),
    MenuItemModel(
      title: 'Some Title',
      svgIconPath: Assets.mailIcon,
    ),
    MenuItemModel(
      title: 'Some Title',
      svgIconPath: Assets.mailIcon,
    ),
    MenuItemModel(
      title: 'Some Title',
      svgIconPath: Assets.mailIcon,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var localization = I18n.of(context);
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              localization.profile,
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 10),
            Row(
              children: [
                ProfileAvatar(
                  profileImageHeight: 100,
                ),
                const SizedBox(width: 20.0),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Jaber', //TODO; get from the provider
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      Container(
                        child: Text(
                          'jaber123@email.com', //TODO; get from the provider
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            MenuItemList(
              itemsList: menuItems,
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SecondaryButtonWidget(
                  iconPath: Assets.logOutIcon,
                  text: localization.logOut,
                  onPressedFunction: () => {
                    navigationService
                        .navigateWithReplacementTo(Pages.authorization),
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
