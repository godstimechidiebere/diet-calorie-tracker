import 'package:dietonyi/model/onboarding_controller.dart';
import 'package:dietonyi/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = Theme.of(context).brightness == Brightness.dark;

    return Positioned(
      bottom: kBottomNavigationBarHeight + 25.0,
      left: 24.0,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigatorClick,
        count: 3,
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? tWhiteColor : tDarkColor, dotHeight: 6),
      ),
    );
  }
}
