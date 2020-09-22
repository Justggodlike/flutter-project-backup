import 'package:flutter/material.dart';

class ButtomBarIcon extends StatelessWidget {
  final IconData iconData;
  final bool hasBadge;
  final int badgeValue;

  static const _iconWithBadgeWidth = 41.0;

  ButtomBarIcon({
    @required this.iconData,
    this.hasBadge = false,
    this.badgeValue = 0,
  });

  @override
  Widget build(BuildContext context) {
    if (hasBadge) {
      return Container(
        alignment: Alignment.center,
        width: _iconWithBadgeWidth,
      );
    }
    return Icon(iconData);
  }
}
