import 'package:flutter/material.dart';
import 'package:help_me/core/common/index.dart';
import 'package:help_me/ui/widgets/bottom_navigation_bar/index.dart';

class BottomNavigationWidget extends StatefulWidget {
  final Iterable<Pages> pages;
  final int selectedIndex;
  final Function(int) onTappedFunction;
  final int orderCount;

  BottomNavigationWidget({
    @required this.pages,
    @required this.selectedIndex,
    @required this.onTappedFunction,
    this.orderCount = 0,
  });

  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: _createBottomNavigationBarItems(),
      unselectedItemColor: Color(0xff515C6F),
      selectedItemColor: Color(0xFFFF6969),
      currentIndex: widget.selectedIndex,
      selectedLabelStyle: Theme.of(context).textTheme.caption,
      unselectedLabelStyle: Theme.of(context).textTheme.caption,
      iconSize: 26.0,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      onTap: widget.onTappedFunction,
    );
  }

  List<BottomNavigationBarItem> _createBottomNavigationBarItems() {
    return widget.pages
        .map(
          (page) => BottomNavigationBarItem(
            icon: ButtomBarIcon(
              iconData: bottomNavigationItems[page].icon,
            ),
            title: Text(bottomNavigationItems[page].title),
          ),
        )
        .toList();
  }
}
