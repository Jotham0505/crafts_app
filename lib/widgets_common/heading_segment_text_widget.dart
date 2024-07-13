import 'package:flutter/material.dart';

class segmentHeadingText extends StatelessWidget {
  const segmentHeadingText({
    super.key, required this.text, required this.subText, required this.padding,
  });

  final String text;
  final String subText;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.spaceAround, // Top categories heading
      children: [
        Padding(
          padding: padding,
          child: Text(
            text,
            style: TextStyle(
                fontFamily: 'Lexend',
                fontSize: 20,
                fontWeight: FontWeight.w400),
          ),
        ),
        Text(
          subText,
          style: TextStyle(
              fontFamily: 'Lexend',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xFF6318AF)),
        ),
      ],
    );
  }
}
