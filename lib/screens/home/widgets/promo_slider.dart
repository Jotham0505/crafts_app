import 'package:carousel_slider/carousel_slider.dart';
import 'package:craftplate/screens/home/controllers/home_controller.dart';
import 'package:craftplate/screens/home/widgets/circular_container.dart';
import 'package:craftplate/utils/constants/colors.dart';
import 'package:craftplate/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({super.key, required this.Banners});

  final List<Widget> Banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          CarouselSlider(
            items: Banners,
            options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) => controller.updatePageIndicator(index)
            ),
          ),
          Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for(int i = 0; i < 2; i++)
                TCircularContainer(height: 4, width: 20,backgroundColor: controller.carouselCurrentIndex.value == i ? Color(0xFF6318AF) : TColors.grey,margin: EdgeInsets.only(right: 10),),
              ],
            ),
          )
        ],
      ),
    );
  }
}