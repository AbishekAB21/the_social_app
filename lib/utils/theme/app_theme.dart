import 'package:flutter/material.dart';
import 'package:the_social_app/utils/theme/app_colors.dart';
import 'package:the_social_app/utils/typography/app_typography.dart';


class AppTheme {
  // =========================
  // DARK THEME
  // =========================

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,

    scaffoldBackgroundColor: AppColors.darkBackground,

    primaryColor: AppColors.primary,

    colorScheme: const ColorScheme.dark(
      primary: AppColors.primary,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.darkBackground,
      elevation: 0,
      centerTitle: false,
    ),

    cardColor: AppColors.darkCard,

    dividerColor: AppColors.dividerDark,

    textTheme: AppTypography.darkTextTheme,

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.darkSurface,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: Colors.grey,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
    ),
  );

  // =========================
  // LIGHT THEME
  // =========================

  static final lightTheme = ThemeData(
    brightness: Brightness.light,

    scaffoldBackgroundColor: AppColors.lightBackground,

    primaryColor: AppColors.primary,

    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.lightBackground,
      elevation: 0,
      centerTitle: false,
    ),

    cardColor: AppColors.lightCard,

    textTheme: AppTypography.lightTextTheme,

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.white,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: Colors.grey,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
    ),
  );
}