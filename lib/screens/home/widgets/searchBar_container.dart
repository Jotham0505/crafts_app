import 'package:craftplate/utils/constants/sizes.dart';
import 'package:craftplate/utils/device/device_utility.dart';
import 'package:craftplate/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';


class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key, required this.text, this.icon, this.showBackground = true, this.showBorder = true, required this.searchbarSize,
  });

  final String text;
  final IconData ? icon;
  final bool showBackground, showBorder;
  final double searchbarSize;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: searchbarSize),
      child: Container(
        width: 350,
    
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5), // Shadow color and opacity
              spreadRadius: 0, // Spread radius
              blurRadius: 1, // Blur radius
              offset: Offset(0, 1), // Offset in x and y directions
            ),
          ],
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                fontFamily: 'Lexend',
                fontSize: 14,
                color: Color(0xFF545454),
                fontWeight: FontWeight.w300
              ),
            ),
            Icon(Icons.search, color: Color(0xFF6318AF),),
          ],
        ),
      ),
    );
  }
}