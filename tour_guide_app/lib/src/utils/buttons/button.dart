

import 'package:flutter/material.dart';
import 'package:tour_guide_app/src/constants/colors.dart';
import 'package:tour_guide_app/src/constants/sizes.dart';

final ButtonStyle buttonPrimary = ElevatedButton.styleFrom(
  primary: btnPrimary,
  elevation: 0,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(buttonPrimaryBR)),
  )

);