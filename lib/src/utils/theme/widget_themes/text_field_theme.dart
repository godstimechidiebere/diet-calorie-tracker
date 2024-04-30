import 'package:dietonyi/src/constants/colors.dart';
import 'package:flutter/material.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme =
      const InputDecorationTheme(
          border: OutlineInputBorder(),
          prefixIconColor: tPrimaryColor,
          floatingLabelStyle: TextStyle(color: tSecondaryColor),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2.0, color: tSecondaryColor)));

  static InputDecorationTheme darkInputDecorationTheme =
      const InputDecorationTheme(
          border: OutlineInputBorder(),
          prefixIconColor: tPrimaryColor,
          floatingLabelStyle: TextStyle(color: tPrimaryColor),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2.0, color: tSecondaryColor)));
}
