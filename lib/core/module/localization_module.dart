import 'package:resume_app/core/config/config_holder.dart';

abstract class LocalizationModule {
  Future<void> initLocal({
    required ConfigHolder configHolder,
  });
}
