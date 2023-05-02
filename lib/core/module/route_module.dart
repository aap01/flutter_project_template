import 'package:flutter/material.dart';
import 'package:resume_app/core/config/config_holder.dart';

abstract class RouteModule {
  Map<String, Route> get({
    required RouteSettings routeSettings,
    required ConfigHolder configHolder,
  });
}
