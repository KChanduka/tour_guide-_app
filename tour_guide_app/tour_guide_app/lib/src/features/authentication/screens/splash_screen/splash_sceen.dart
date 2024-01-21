import 'package:flutter/material.dart';
import 'package:tour_guide_app/src/constants/images_strings.dart';
import 'package:tour_guide_app/src/features/authentication/screens/onboarding/onboarding1.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

     Future.delayed(Duration(seconds:3), () {
      // Navigate to the Onboarding1 page after 5 seconds
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Onboarding1()),
      );
    });


    return  Scaffold(
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
          image: AssetImage(splashlogo),
          width: double.infinity,
            ),
        ],
        ) 
      ),
    );
  }
}