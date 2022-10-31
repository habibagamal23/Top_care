import 'package:flutter/material.dart';

import '../presention/splash/confirem_screen.dart';
import '../presention/splash/splash_veiw.dart';

class Routes {
  static const String splashRoute = "/";
  static const String confirmRoute = "/onboarding";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String mainRoute = "/main";
}

class RouteGeneratour {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.confirmRoute:
        return MaterialPageRoute(builder: (_) => const ConfiremScreen());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text("not found"),
              ),
              body: const Center(child: Text("not found")),
            ));
  }
}
