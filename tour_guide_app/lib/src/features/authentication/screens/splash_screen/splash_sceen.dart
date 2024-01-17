import 'package:flutter/material.dart';
import 'package:tour_guide_app/src/constants/images_strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(
          image: AssetImage(splashlogo),
          width: double.infinity,
        ),
      ),
    );
  }
}