import 'package:flutter/material.dart';
import 'core/theme.dart';
import 'core/routes.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Template',
      theme: AppTheme.lightTheme,
      initialRoute: '/',
      routes: appRoutes,
    );
  }
}
