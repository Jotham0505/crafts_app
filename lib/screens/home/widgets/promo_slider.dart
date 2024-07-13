import 'package:carousel_slider/carousel_slider.dart';
import 'package:craftplate/screens/home/controllers/home_controller.dart';
import 'package:craftplate/utils/constants/colors.dart';
import 'package:craftplate/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({super.key, required this.Banners, required this.padding});

  final List<Widget> Banners;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Padding(
      padding: EdgeInsets.all(10),
      child: Stack(
        children: [
          
          Column(
          children: [
            CarouselSlider(
              items: Banners,
              options: CarouselOptions(
                viewportFraction: 1,
                onPageChanged: (index, _) => controller.updatePageIndicator(index)
              ),
            ),
          ],
        ),
        Obx(() {
            return Column(
              children: [
                Container(
                  width: 225,
                  child: Padding(
                    padding: padding,
                    child: Text(
                      controller.getCurrentText(),
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Lexend',
                          fontSize: 22),
                      maxLines: 3,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 55),
                  child: Image(
                    image: AssetImage('assets/utilities/off.png'),
                  ),
                ),
              ],
            );
          }),
        ],
      ),
    );
  }
}