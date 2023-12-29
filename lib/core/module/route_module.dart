import 'package:flutter/material.dart';
import 'package:resume_app/core/dependency/injector.dart';

abstract class RouteModule {
  Map<String, Route Function(RouteSettings, Injector)> getRoutes();
}
