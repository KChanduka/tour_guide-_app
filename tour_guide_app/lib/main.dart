import 'package:flutter/material.dart';
import 'package:tour_guide_app/src/features/authentication/screens/onboarding/onboarding.dart';
import 'package:tour_guide_app/src/features/authentication/screens/welcome/login_screen.dart';
// import 'package:tour_guide_app/src/features/authentication/screens/splash_screen/splash_sceen.dart';

void main () {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: const Center(
//           child:Image(
//             image: AssetImage('assets/logo/Onboarding1.png'),
//             width:double.infinity,)
//         )
//       ),
//     );
//   }
// }

