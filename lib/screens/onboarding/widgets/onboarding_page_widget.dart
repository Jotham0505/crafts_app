import 'package:craftplate/utils/constants/sizes.dart';
import 'package:craftplate/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key, required this.image, required this.title, required this.subTiile,
  });

  final String image, title, subTiile;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 130),
      child: Column(
        children: [
          Image(
            width: THelperFunctions.screenWidth() * 0.7,
            height: THelperFunctions.screenHeight() * 0.3,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Lexend',
              fontWeight: FontWeight.w500,
              fontSize: 25,
              color: Color(0xFF030303)
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: TSizes.spaceBtwItems,
          ),
          Text(
            subTiile,
            style: TextStyle(
              fontFamily: 'Lexend',
              fontWeight: FontWeight.w300,
              fontSize: 19,
              color: Color(0xFF7B7B7B)
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}