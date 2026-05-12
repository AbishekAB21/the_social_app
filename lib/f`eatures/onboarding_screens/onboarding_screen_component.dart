import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:the_social_app/core/constants/app_assets.dart';
import 'package:the_social_app/core/constants/app_strings.dart';
import 'package:the_social_app/routes/app_route_paths.dart';
import 'package:the_social_app/utils/theme/app_colors.dart';

import 'package:the_social_app/utils/theme/app_theme_extension.dart';

class OnboardingScreenComponent extends StatelessWidget {
  const OnboardingScreenComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final glass = theme.extension<AppThemeExtension>()!;

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          // =========================
          // BACKGROUND IMAGE
          // =========================
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              AppAssets.onboardingBackground,
              fit: BoxFit.cover,
            ),
          ),

          // =========================
          // DARK OVERLAY
          // =========================
          Container(color: Colors.black.withValues(alpha: .35)),

          // =========================
          // BOTTOM GLASS CONTAINER
          // =========================
          Align(
            alignment: Alignment.bottomCenter,

            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(40),
              ),

              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),

                child: Container(
                  width: double.infinity,
                  height: size.height * 0.40,

                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 28,
                  ),

                  decoration: BoxDecoration(
                    color: glass.glassBackground.withValues(alpha: .10),

                    border: Border(
                      top: BorderSide(
                        color: glass.glassBorder.withValues(alpha: .1),
                      ),

                      left: BorderSide(
                        color: glass.glassBorder.withValues(alpha: .1),
                      ),

                      right: BorderSide(
                        color: glass.glassBorder.withValues(alpha: .1),
                      ),
                    ),

                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(10),
                    ),
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      // =========================
                      // TOP INDICATOR
                      // =========================
                      Align(
                        alignment: Alignment.center,

                        child: Container(
                          width: 50,
                          height: 5,

                          decoration: BoxDecoration(
                            color: theme.colorScheme.onSurface.withValues(
                              alpha: .7,
                            ),

                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),

                      const Spacer(),

                      // =========================
                      // TITLE
                      // =========================
                      Text(
                        AppStrings.onboardingTitle,
                        style: theme.textTheme.headlineLarge!.copyWith(
                          color: theme.colorScheme.onSurface,
                          fontWeight: FontWeight.w800,
                          height: 1.1,
                        ),
                      ),

                      const SizedBox(height: 14),

                      // =========================
                      // SUBTITLE
                      // =========================
                      Text(
                        AppStrings.onboardingSubtitle,

                        style: theme.textTheme.bodyLarge!.copyWith(
                          color: theme.colorScheme.onSurface.withValues(
                            alpha: .7,
                          ),
                          height: 1.5,
                          fontSize: 15,
                        ),
                      ),

                      const Spacer(),

                      // =========================
                      // BUTTON
                      // =========================
                      Align(
                        alignment: Alignment.center,

                        child: Material(
                          color: Colors.transparent,

                          child: InkWell(
                            borderRadius: BorderRadius.circular(35),
                          
                            onTap: () {
                              context.go(AppRoutesPaths.login);
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                          
                              child: BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                          
                                child: Container(
                                  width: 70,
                                  height: 70,
                          
                                  decoration: BoxDecoration(
                                    color: theme.primaryColor.withValues(
                                      alpha: .18,
                                    ),
                          
                                    shape: BoxShape.circle,
                          
                                    border: Border.all(
                                      color: theme.primaryColor.withValues(
                                        alpha: .25,
                                      ),
                                    ),
                                  ),
                          
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: theme.primaryColor,
                                    size: 28,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
