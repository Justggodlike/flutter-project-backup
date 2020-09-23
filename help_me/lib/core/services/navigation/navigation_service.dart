import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:help_me/core/common/index.dart';
import 'package:help_me/ui/pages/authorization/index.dart';
import 'package:help_me/ui/pages/create_advert/index.dart';
import 'package:help_me/ui/pages/create_advert/summary_page/index.dart';
import 'package:help_me/ui/pages/create_advert/vacancy_page/index.dart';
import 'package:help_me/ui/pages/create_advert/work_page/index.dart';
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
        resultPage = CreateAdvertPage();
        break;
      case Pages.createVacancy:
        resultPage = CreateVacancyPage();
        break;
      case Pages.createWork:
        resultPage = CreateWorkPage();
        break;
      case Pages.createSummary:
        resultPage = CreateSummaryPage();
        break;
      case Pages.authorization:
        resultPage = AuthorizationPage();
        break;
      case Pages.vcancyCategories:
        resultPage = VacancyCategoriesPage();
        break;
      case Pages.finalCreate:
        resultPage = FinalCreatePage();
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
