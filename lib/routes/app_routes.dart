import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:the_social_app/routes/app_route_paths.dart';

import 'app_routes.dart';

// Screens
import 'package:the_social_app/f%60eatures/splash_screen/spalsh_screen_container.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutesPaths.splash,

    routes: [
      GoRoute(
        path: AppRoutesPaths.splash,
        builder: (context, state) => const SpalshScreenContainer(),
      ),

    //   GoRoute(
    //     path: AppRoutesPaths.onboarding,
    //     builder: (context, state) => const OnboardingScreen(),
    //   ),

    //   GoRoute(
    //     path: AppRoutesPaths.login,
    //     builder: (context, state) => const LoginScreen(),
    //   ),

    //   GoRoute(
    //     path: AppRoutesPaths.signup,
    //     builder: (context, state) => const SignupScreen(),
    //   ),

    //   GoRoute(
    //     path: AppRoutesPaths.home,
    //     builder: (context, state) => const HomeScreen(),
    //   ),

    //   GoRoute(
    //     path: AppRoutesPaths.profile,
    //     builder: (context, state) => const ProfileScreen(),
    //   ),

    //   GoRoute(
    //     path: AppRoutesPaths.settings,
    //     builder: (context, state) => const SettingsScreen(),
    //   ),
     ],
  );
}