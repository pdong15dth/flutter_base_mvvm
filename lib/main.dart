import 'package:flutter/material.dart';
import 'package:flutter_base_mvvm/app/app.dart';
import 'package:flutter_base_mvvm/presentation/login/login.dart';

import 'app/di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initAppModule();
  runApp(MyApp());
}
