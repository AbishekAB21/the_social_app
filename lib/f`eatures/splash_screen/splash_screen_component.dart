import 'package:flutter/material.dart';
import 'package:the_social_app/core/constants/app_strings.dart';

class SplashScreenComponent extends StatelessWidget {
  const SplashScreenComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Text(
          AppStrings.appName,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}
