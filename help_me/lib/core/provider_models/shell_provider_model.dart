import 'package:flutter/widgets.dart';
import 'package:help_me/core/common/index.dart';

class ShellProviderModel with ChangeNotifier {
  final List<Pages> pages = [
    Pages.home,
  ];

  int selectedIndex = 0;

  Pages get selectedPage => pages[selectedIndex];

  void onTappedIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
