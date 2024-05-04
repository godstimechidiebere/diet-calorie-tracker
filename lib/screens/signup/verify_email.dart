import 'package:dietonyi/screens/login/login.dart';
import 'package:dietonyi/src/constants/image_strings.dart';
import 'package:dietonyi/src/constants/sizes.dart';
import 'package:dietonyi/src/constants/text_strings.dart';
import 'package:dietonyi/src/helpers/helper_functions.dart';
import 'package:dietonyi/widgets/success_screen/success_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.clear),
            onPressed: () => Get.offAll(() => const LoginScreen()),
          ),
        ],
      ),
      body: SingleChildScrollView(
        //Padding to give default equal space on all sides in all screens
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultspace),
          child: Column(
            children: [
              ///Image
              Image(
                image: const AssetImage(TImages.tDeliveredEmailIllustration),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///Title & SubTitle
              Text(
                tConfirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                'nwabufogodstime@gmail.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                tConfirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              ///Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.offAll(
                      () => SuccessScreen(
                        image: TImages.tStaticSuccessIllustration,
                        title: tYourAccountCreatedTitle,
                        subTitle: tYourAccountCreatedSubTitle,
                        onPressed: () => Get.offAll(() => const LoginScreen()),
                      ),
                    );
                  },
                  child: const Text(tContinue),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(tResendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
