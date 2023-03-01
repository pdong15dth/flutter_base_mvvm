import 'package:flutter_base_mvvm/app/app_prefs.dart';
import 'package:flutter_base_mvvm/app/di.dart';
import 'package:flutter_base_mvvm/presentation/resources/routes_manager.dart';
import 'package:flutter_base_mvvm/presentation/resources/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class MyApp extends StatefulWidget {
  MyApp._internal(); // private named constructor
  int appState = 0;
  static final MyApp instance =
      MyApp._internal(); // single instance -- singleton

  factory MyApp() => instance; // factory for the class instance

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AppPreferences _appPreferences = instance<AppPreferences>();

  @override
  void didChangeDependencies() {
    _appPreferences.getLocal().then((local) => {context.setLocale(local)});

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.loginRoute,
      theme: getApplicationTheme(),
    );
  }
}
