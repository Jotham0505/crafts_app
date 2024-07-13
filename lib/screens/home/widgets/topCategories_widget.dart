import 'package:flutter/material.dart';

class CategoriesSlider extends StatelessWidget {
  const CategoriesSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: EdgeInsets.all(10),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            children: [
              Image(image: AssetImage('assets/categories/tp1.png')),
              SizedBox(
                width: 14,
              ),
              Image(image: AssetImage('assets/categories/tp2.png')),
              SizedBox(
                width: 14,
              ),
              Image(image: AssetImage('assets/categories/tp3.png')),
              SizedBox(
                width: 14,
              ),
              Image(image: AssetImage('assets/categories/tp4.png')),
              SizedBox(
                width: 14,
              ),
              Image(image: AssetImage('assets/categories/tp5.png')),
              SizedBox(
                width: 14,
              ),
              Image(image: AssetImage('assets/categories/tp6.png')),
            ],
          ),
        ],
      ),
    );
  }
}
