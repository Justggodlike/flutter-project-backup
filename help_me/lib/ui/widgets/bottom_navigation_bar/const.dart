import 'package:flutter/material.dart';
import 'package:help_me/core/common/index.dart';
import 'package:help_me/ui/widgets/bottom_navigation_bar/index.dart';

final bottomNavigationItems = {
  Pages.home: BottomNavigationItemModel(icon: Icons.home, title: 'Home'),
  Pages.create: BottomNavigationItemModel(icon: Icons.add_box, title: 'Create'),
  Pages.profile:
      BottomNavigationItemModel(icon: Icons.person_outline, title: 'Profile'),
};
