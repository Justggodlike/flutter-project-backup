import 'package:get_it/get_it.dart';
import 'package:help_me/core/services/authorization/index.dart';
import 'package:help_me/core/services/data_access/index.dart';
import 'package:help_me/core/services/navigation/index.dart';

NavigationService get navigationService => GetIt.I.get<NavigationService>();
AuthorizationService get authorizatoinService =>
    GetIt.I.get<AuthorizationService>();
DataAccessService get dataAccessService => GetIt.I.get<DataAccessService>();

class DependencyService {
  static void registerDependencies() {
    GetIt serviceLocator = GetIt.instance;

    serviceLocator
      ..registerLazySingleton<NavigationService>(() => NavigationService())
      ..registerLazySingleton<AuthorizationService>(
          () => AuthorizationService())
      ..registerLazySingleton<DataAccessService>(() => DataAccessService());
  }
}
