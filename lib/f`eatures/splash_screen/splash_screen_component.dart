import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:the_social_app/core/constants/app_assets.dart';
import 'package:the_social_app/core/constants/app_strings.dart';
import 'package:the_social_app/routes/app_route_paths.dart';

class SplashScreenComponent extends StatefulWidget {
  const SplashScreenComponent({super.key});

  @override
  State<SplashScreenComponent> createState() => _SplashScreenComponentState();
}

class _SplashScreenComponentState extends State<SplashScreenComponent> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      // Navigate to onboarding
      if (mounted) {
        context.go(AppRoutesPaths.onboarding);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,

            child: Image.asset(AppAssets.splashBackground, fit: BoxFit.cover),
          ),

          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(AppAssets.appLogo, width: 350, height: 400),
          ),
        ],
      ),
    );
  }
}
