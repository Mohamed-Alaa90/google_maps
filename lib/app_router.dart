import 'package:flutter/material.dart';
import 'package:google_maps/core/constant/route_name.dart';
import 'package:google_maps/views/auth/login.dart';
import 'package:google_maps/views/home/home.dart';

class AppRouter {
  Route? generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case RouteName.login:
        return MaterialPageRoute(
          builder: (_) => Login(),
        );
      case RouteName.home:
        return MaterialPageRoute(
          builder: (_) => Home(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text('Page Not Found'),
            ),
          ),
        );
    }
  }
}
