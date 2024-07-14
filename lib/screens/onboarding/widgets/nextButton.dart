import 'package:craftplate/screens/onboarding/controllers/onboarding_controller.dart';
import 'package:craftplate/utils/constants/colors.dart';
import 'package:craftplate/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({super.key, this.onPressed});

  final VoidCallback ? onPressed;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(onBoardingController());
    return  GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: Color(0xFF6318AF).withOpacity(0.1),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Get Started',
              style: TextStyle(
                color: Color(0xFF6318AF),
                fontSize: 16,
              ),
            ),
            SizedBox(width: 10),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFF6318AF),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*Positioned(
      bottom: 140,
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
    ); */