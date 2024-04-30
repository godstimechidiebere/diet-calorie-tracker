import 'package:dietonyi/model/onboarding_controller.dart';
import 'package:dietonyi/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:dietonyi/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:dietonyi/screens/onboarding/widgets/onboarding_page.dart';
import 'package:dietonyi/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:dietonyi/src/constants/image_strings.dart';
import 'package:dietonyi/src/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          ///Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: tOnBoardingImage1,
                title: tOnBoardingTitle1,
                subTitle: tOnBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: tOnBoardingImage2,
                title: tOnBoardingTitle2,
                subTitle: tOnBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: tOnBoardingImage3,
                title: tOnBoardingTitle3,
                subTitle: tOnBoardingSubTitle3,
              ),
            ],
          ),

          ///Skip Button
          const OnBoardingSkip(),

          ///Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          ///Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
