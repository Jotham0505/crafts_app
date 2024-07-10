import 'package:craftplate/screens/onboarding/controllers/onboarding_controller.dart';
import 'package:craftplate/screens/onboarding/widgets/dot.dart';
import 'package:craftplate/screens/onboarding/widgets/nextButton.dart';
import 'package:craftplate/screens/onboarding/widgets/onboarding_page_widget.dart';
import 'package:craftplate/screens/onboarding/widgets/skip.dart';
import 'package:craftplate/utils/constants/sizes.dart';
import 'package:craftplate/utils/constants/text_strings.dart';
import 'package:craftplate/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(onBoardingController());
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                  image: TImages.onBoardingImage1,
                  title: TTexts.onBoardingTitle1,
                  subTiile: TTexts.onBoardingSubTitle1),
              OnBoardingPage(
                  image: TImages.onBoardingImage2,
                  title: TTexts.onBoardingTitle2,
                  subTiile: TTexts.onBoardingSubTitle2),
              OnBoardingPage(
                  image: TImages.onBoardingImage3,
                  title: TTexts.onBoardingTitle3,
                  subTiile: TTexts.onBoardingSubTitle3),
            ],
          ),
          OnBoardSkip(), 
          
          OnBoardingDotNavigator(),// skip button 

          SizedBox(
            height: 40,
          ),
          OnBoardingNextButton(), // next button 
          
           // navigator slider
        ],
      ),
    );
  }
}