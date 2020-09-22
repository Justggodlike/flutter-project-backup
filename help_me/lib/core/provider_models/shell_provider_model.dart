import 'package:flutter/widgets.dart';
import 'package:help_me/core/common/index.dart';

class ShellProviderModel with ChangeNotifier {
  final List<Pages> pages = [
    Pages.home,
    Pages.create,
    Pages.profile,
  ];

  int selectedItemIndex = 0;

  Pages get selectedPage => pages[selectedItemIndex];

  void onTappedItem(int index) {
    selectedItemIndex = index;
    notifyListeners();
  }
}
