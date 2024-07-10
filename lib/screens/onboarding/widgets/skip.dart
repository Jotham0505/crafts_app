import 'package:craftplate/screens/onboarding/controllers/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardSkip extends StatelessWidget {
  const OnBoardSkip({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(onBoardingController());
    return Positioned(
      top: 60,
      right: 15,
      child: Container(
        height: 35,
        width: 60,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 244, 237, 252),
          borderRadius: BorderRadius.circular(10)
        ),
        child: TextButton(
          onPressed: () => controller.skipPage(),
          child: Text(
            'Skip',
            style: TextStyle(fontSize: 15),
          ),
        ),
      ),
    );
  }
}

/*Positioned(
      top: 45,
      right: 15,
      child: TextButton(onPressed: () => controller.skipPage(), child: Text('Skip',style: TextStyle(fontSize: 20),)),
    );*/