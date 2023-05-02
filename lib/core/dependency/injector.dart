import 'package:get_it/get_it.dart';

abstract class Injector {
  void registerLazySingleton<T extends Object>(T t);
  void registerFactory<T extends Object>(T t);
  T get<T extends Object>();
}

class AppInjector implements Injector {
  final GetIt _getIt = GetIt.instance;
  @override
  T get<T extends Object>() {
    return _getIt<T>();
  }

  @override
  void registerFactory<T extends Object>(T t) {
    _getIt.registerFactory<T>(() => t);
  }

  @override
  void registerLazySingleton<T extends Object>(T t) {
    _getIt.registerLazySingleton<T>(() => t);
  }
}
