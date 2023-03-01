// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_base_mvvm/app/di.dart';
import 'package:flutter_base_mvvm/presentation/login/login.dart';
import 'package:flutter_base_mvvm/presentation/resources/strings_manager.dart';

import '../splash/splash.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onBoarding";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String mainRoute = "/main";
  static const String storeDetailRoute = "/storeDetail";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => SplashView());
      case Routes.loginRoute:
        initLoginModule();
        return MaterialPageRoute(builder: (_) => LoginView());
      default:
        return UnDefinedRoute();
    }
  }

  static Route<dynamic> UnDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text(AppStrings.noRouteFound),
        ),
        body: Center(
          child: Text(AppStrings.noRouteFound),
        ),
      ),
    );
  }
}
