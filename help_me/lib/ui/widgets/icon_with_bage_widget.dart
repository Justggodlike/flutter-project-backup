import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class IconWithBageWidget extends Badge {
  final int badgeValue;
  final BadgePosition badgePosition;
  final Widget icon;
  final TextStyle badgeTextStyle;

  IconWithBageWidget({
    this.badgeValue = 0,
    this.badgePosition,
    this.badgeTextStyle,
    @required this.icon,
  }) : super(
          child: icon,
          badgeContent: Text(
            badgeValue.toString(),
            style: badgeTextStyle,
            textAlign: TextAlign.center,
          ),
          position:
              badgePosition ?? BadgePosition.bottomStart(bottom: 9, start: 15),
          shape: BadgeShape.square,
          borderRadius: 10.0,
          elevation: 1.0,
          badgeColor: Colors.red[300],
          animationType: BadgeAnimationType.scale,
          showBadge: badgeValue != 0,
          padding: const EdgeInsets.fromLTRB(
            6.0,
            2.0,
            6.0,
            2.0,
          ),
        );
}
