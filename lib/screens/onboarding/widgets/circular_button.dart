import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CircularButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xFF6318AF),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Color(0xFFE0D4EC)
                        .withOpacity(0.9), // Shadow color and opacity
                    spreadRadius: 9, // Spread radius
                    blurRadius: 0, // Blur radius
                    offset: Offset(0, 0),
            )
          ]
        ),
        child: Icon(
          Icons.arrow_forward,
          color: Colors.white,
          size: 16,
        ),
      ),
    );
  }
}