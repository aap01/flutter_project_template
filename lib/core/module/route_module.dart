import 'package:flutter/material.dart';

abstract class RouteModule {
  Map<String, Route> get({
    required RouteSettings routeSettings,
  });
}
