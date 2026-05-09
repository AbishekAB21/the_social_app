import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_social_app/f%60eatures/splash_screen/spalsh_screen_container.dart';
import 'package:the_social_app/utils/theme/app_theme.dart';
import 'package:the_social_app/utils/theme/theme_cubit.dart';
import 'package:the_social_app/utils/theme/theme_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, AppThemeMode>(
        builder: (context, themeMode) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,

            theme: AppTheme.lightTheme,
            darkTheme: AppTheme.darkTheme,

            themeMode: themeMode == AppThemeMode.dark
                ? ThemeMode.dark
                : ThemeMode.light,
            home: const SpalshScreenContainer(),
          );
        },
      ),
    );
  }
}
