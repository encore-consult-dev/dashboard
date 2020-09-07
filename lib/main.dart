import 'package:flutter/material.dart';
import 'package:moberas_dashboard/router/router.gr.dart';
import 'package:stacked_services/stacked_services.dart';

import 'locator.dart';
import 'logger.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLogger();
  await setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'mobEras Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      navigatorKey: locator<NavigationService>().navigatorKey,
      initialRoute: Routes.loginView,
      onGenerateRoute: Router().onGenerateRoute,
    );
  }
}
