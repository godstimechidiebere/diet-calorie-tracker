import 'package:dietonyi/screens/login/login_form.dart';
import 'package:dietonyi/screens/login/login_header.dart';
import 'package:dietonyi/src/constants/sizes.dart';
import 'package:dietonyi/src/constants/text_strings.dart';
import 'package:dietonyi/styles/spacing_styles.dart';
import 'package:dietonyi/widgets/login_signup/form_divider.dart';
import 'package:dietonyi/widgets/login_signup/social_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              ///Logo, Title & Sub-Title
              TLoginHeader(),

              ///Form
              TLoginForm(),

              ///Divider
              TFormDivider(dividerText: tOrSignInWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///Footer
              TSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
