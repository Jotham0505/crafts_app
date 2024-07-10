import 'package:craftplate/screens/onboarding/controllers/onboarding_controller.dart';
import 'package:craftplate/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigator extends StatelessWidget {
  const OnBoardingDotNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(onBoardingController());
    return Positioned(
      left: 135,
      bottom: 180,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: Color.fromARGB(255, 103, 22, 216),
          dotHeight: 6
        ),
      ),
    );
  }
}