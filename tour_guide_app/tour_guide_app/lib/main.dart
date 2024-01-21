import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tour_guide_app/firebase_options.dart';
import 'package:tour_guide_app/src/features/authentication/screens/splash_screen/splash_sceen.dart';
import 'package:tour_guide_app/src/features/location/all_locations.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // Check if the user is already signed in
  User? user = FirebaseAuth.instance.currentUser;

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: user != null ? const AllLocations() : const SplashScreen(),
    ),
  );
}
