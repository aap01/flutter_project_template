import 'package:flutter/material.dart';
import 'package:resume_app/core/dependency/injector.dart';
import 'package:resume_app/core/module/route_module.dart';
import 'package:resume_app/feature/profile/presentation/profile_screen.dart';
import 'package:resume_app/feature/profile/presentation/profile_screen_bloc.dart';

class ProfileRouteModule extends RouteModule {
  static const root = 'profile';
  @override
  Map<String, Route Function(RouteSettings, Injector)> getRoutes() {
    return {
      root: (
        RouteSettings routeSettings,
        Injector injector,
      ) {
        return MaterialPageRoute(
          builder: (_) {
            return ProfileScreen(
              profileScreenBloc: injector<ProfileScreenBloc>(),
            );
          },
          settings: routeSettings,
        );
      },
    };
  }
}
