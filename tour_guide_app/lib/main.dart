import 'package:flutter/material.dart';
import 'package:tour_guide_app/src/features/authentication/screens/onboarding/onboarding1.dart';
import 'package:tour_guide_app/src/features/authentication/screens/onboarding/onboarding2.dart';
import 'package:tour_guide_app/src/features/authentication/screens/onboarding/onboarding3.dart';
import 'package:tour_guide_app/src/features/authentication/screens/splash_screen/splash_sceen.dart';
import 'package:tour_guide_app/src/features/authentication/screens/welcome/create_account_screen.dart';
import 'package:tour_guide_app/src/features/authentication/screens/welcome/create_new_password_screen.dart';
import 'package:tour_guide_app/src/features/authentication/screens/welcome/forgot_password_screen.dart';
import 'package:tour_guide_app/src/features/authentication/screens/welcome/login_screen.dart';
import 'package:tour_guide_app/src/features/authentication/screens/welcome/succesful_screen.dart';
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
      // home: ForgotPassword(),
      // home: Successfull(),
      // home: CreateAccount(),
      // home: CreatePassword(),
      // home: LoginScreen(),
      // home: Onboarding1(),    //<=uncomment this line.comment remaining three, to priveiw the onboaring screen
      // home: Onboarding2(),    //<=uncomment this line.comment remaining three, to priveiw the onboaring screen
      // home: Onboarding3(),    //<=uncomment this line.comment remaining three, to priveiw the onboaring screen
      home: SplashScreen(),  //<=uncomment  this line.comment remaining above three, to priveiw the splash screen
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


