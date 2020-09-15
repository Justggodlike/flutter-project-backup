import 'package:get_it/get_it.dart';
import 'package:help_me/core/services/navigation/navigation_service.dart';

NavigationService get navigationService => GetIt.I.get<NavigationService>();

class DependencyService {
  static void registerDependencies() {
    GetIt serviceLocator = GetIt.instance;

    serviceLocator
        .registerLazySingleton<NavigationService>(() => NavigationService());
  }
}
