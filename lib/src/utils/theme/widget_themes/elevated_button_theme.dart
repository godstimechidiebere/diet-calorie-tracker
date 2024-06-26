import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

/* ----Light & Dark Elevated Button Themes---*/
class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  /* --Light Theme---*/
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(),
      foregroundColor: tWhiteColor,
      backgroundColor: tSecondaryColor,
      side: BorderSide(color: tSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: TSizes.tButtonHeight),
    ),
  );

  /* --Dark Theme---*/
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(),
      foregroundColor: tSecondaryColor,
      backgroundColor: tWhiteColor,
      side: BorderSide(color: tWhiteColor),
      padding: const EdgeInsets.symmetric(vertical: TSizes.tButtonHeight),
    ),
  );
}
