import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      body: Center(
        child: Image.asset(
          "assets/logo.png",
          width: 120.0,
          height: 120.0,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
