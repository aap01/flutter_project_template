import 'package:resume_app/core/dependency/injector.dart';

abstract class InjectoionModule {
  Future<void> inject({
    required Injector injector,
  });
}
