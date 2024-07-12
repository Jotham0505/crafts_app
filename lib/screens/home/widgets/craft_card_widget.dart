import 'package:flutter/material.dart';

class CraftingCard extends StatelessWidget {
  const CraftingCard({
    super.key, required this.image, required this.text,
  });

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 25),
            width: 154,
            height: 130,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black
                      .withOpacity(0.2), // Shadow color and opacity
                  spreadRadius: 1, // Spread radius
                  blurRadius: 1, //1 Blur radius
                  offset: Offset(0, 2),
                )
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              child: Image(
                image: AssetImage(image),
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 95,left: 31),
            child: Text(
              text,
              style: TextStyle(
                fontFamily: 'Lexend',
                fontSize: 14,
                fontWeight: FontWeight.w400
              ),
            ),
          ),
        ],
      ),
    );
  }
}