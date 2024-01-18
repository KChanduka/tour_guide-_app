import 'package:flutter/material.dart';
import 'package:tour_guide_app/src/constants/images_strings.dart';
import 'package:tour_guide_app/src/features/authentication/screens/onboarding/onboarding1.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          children: [
            const Image(
          image: AssetImage(splashlogo),
          width: double.infinity,
            ),

            ElevatedButton(
             onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => Onboarding1()));
             },
             child: const Text(
              "next",
              style: TextStyle(
                color: Colors.white
              ) ,),),
        ],
        ) 
      ),
    );
  }
}