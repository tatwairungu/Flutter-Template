import 'package:flutter/material.dart';
import '../views/home_view.dart';
import '../views/login_view.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => HomeView(),
  '/login': (context) => LoginView(),
};
