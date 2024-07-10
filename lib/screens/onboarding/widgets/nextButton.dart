import 'package:craftplate/screens/onboarding/controllers/onboarding_controller.dart';
import 'package:craftplate/utils/constants/colors.dart';
import 'package:craftplate/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(onBoardingController());
    return Positioned(
      bottom: 100,
      right: 120,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.white
        ),
        onPressed: () => controller.nextPage(),
        child: CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage('assets/utilities/button.png'),
        ),
      )
    );
  }
}