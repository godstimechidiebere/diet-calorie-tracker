import 'package:dietonyi/model/onboarding_controller.dart';
import 'package:dietonyi/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;

    return Positioned(
      right: 24.0,
      bottom: kBottomNavigationBarHeight,
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? tPrimaryColor : Colors.black),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
