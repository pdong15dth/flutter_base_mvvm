import 'package:flutter_base_mvvm/presentation/login/login.dart';
import 'package:flutter_base_mvvm/presentation/resources/strings_manager.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../app/di.dart';

class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onBoarding";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.loginRoute:
        initLoginModule(); // init viewmodel by DI
        return MaterialPageRoute(builder: (_) => LoginView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text(AppStrings.noRouteFound).tr(),
              ),
              body: Center(child: Text(AppStrings.noRouteFound).tr()),
            ));
  }
}
