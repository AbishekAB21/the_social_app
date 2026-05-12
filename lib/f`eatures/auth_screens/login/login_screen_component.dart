import 'package:flutter/material.dart';

class LoginScreenComponent extends StatelessWidget {
  const LoginScreenComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Login Screen',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}