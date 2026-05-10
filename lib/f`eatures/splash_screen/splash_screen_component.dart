import 'package:flutter/material.dart';
import 'package:the_social_app/core/constants/app_assets.dart';
import 'package:the_social_app/core/constants/app_strings.dart';

class SplashScreenComponent extends StatelessWidget {
  const SplashScreenComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            child: Image.asset(AppAssets.splashBackground, fit: BoxFit.cover,)),
          
          Image.asset(AppAssets.appLogo, width: 350, height: 400,),
        ],
      )
    );
  }
}
