import 'package:flutter/material.dart';
import 'package:test_app/core/routing/routes.dart';
import 'package:test_app/features/login/login_screen.dart';
import 'package:test_app/features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text("route not defined"),
            ),
          ),
        );
    }
  }
}
