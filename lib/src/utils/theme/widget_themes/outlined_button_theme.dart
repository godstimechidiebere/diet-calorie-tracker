import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

/* ----Light & Dark OutlinedButton Themes---*/
class TOutlinedButtonTheme {
  TOutlinedButtonTheme._();

  /* --Light Theme---*/
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: tSecondaryColor,
      side: BorderSide(color: tSecondaryColor),
      padding: const EdgeInsets.symmetric(vertical: TSizes.tButtonHeight),
    ),
  );

  /* --Dark Theme---*/
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(),
      foregroundColor: tWhiteColor,
      side: BorderSide(color: tWhiteColor),
      padding: const EdgeInsets.symmetric(vertical: TSizes.tButtonHeight),
    ),
  );
}
