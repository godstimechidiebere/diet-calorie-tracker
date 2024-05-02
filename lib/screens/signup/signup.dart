import 'package:dietonyi/src/constants/sizes.dart';
import 'package:dietonyi/src/constants/text_strings.dart';
import 'package:dietonyi/widgets/login_signup/form_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(128.0),
          child: Column(
            children: [
              ///Title
              Text(tSignUpTitle1,
                  style: Theme.of(context).textTheme.headlineMedium),
              Text(tSignUpTitle2,
                  style: Theme.of(context).textTheme.headlineMedium),

              const SizedBox(height: TSizes.spaceBtwSections),

              /// Continue Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(tContinue),
                ),
              ),

              const SizedBox(height: TSizes.spaceBtwSections),

              ///Divider
              TFormDivider(dividerText: tOrSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///Social Buttons

              SizedBox(
                width: double.infinity,
                child: SignInButton(
                  Buttons.Apple,
                  text: "Sign up with Google",
                  onPressed: () {},
                ),
              ),

              const SizedBox(height: TSizes.xs),

              SizedBox(
                width: double.infinity,
                child: SignInButton(
                  Buttons.Facebook,
                  text: "Sign up with Facebook",
                  onPressed: () {},
                ),
              ),

              const SizedBox(height: TSizes.xs),

              //Footer Text
              const Text(tPost),
            ],
          ),
        ),
      ),
    );
  }
}
