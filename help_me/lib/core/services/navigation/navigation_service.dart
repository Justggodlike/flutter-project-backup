import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:help_me/core/common/index.dart';
import 'package:help_me/ui/pages/authorization/index.dart';
import 'package:help_me/ui/pages/index.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(Pages page, {Object arguments}) {
    var route = _generateRoute(page, arguments);
    return navigatorKey.currentState.push(route);
  }

  Future<dynamic> navigateWithReplacementTo(Pages page, {Object arguments}) {
    var route = _generateRoute(page, arguments);
    return navigatorKey.currentState.pushReplacement(route);
  }

  void goBack() {
    navigatorKey.currentState.pop();
  }

  Route<dynamic> _generateRoute(Pages page, Object arguments) {
    var resultPage;

    switch (page) {
      case Pages.shell:
        resultPage = ShellPage();
        break;
      case Pages.home:
        resultPage = HomePage();
        break;
      case Pages.create:
        resultPage = CereateAdvertPage();
        break;
      case Pages.authorization:
        resultPage = AuthorizationPage();
        break;
      default:
        resultPage = AuthorizationPage();
        break;
    }

    return _getRoute(resultPage);
  }

  Route<dynamic> _getRoute(Widget widget) {
    return CupertinoPageRoute(builder: (_) => widget);
  }
}
