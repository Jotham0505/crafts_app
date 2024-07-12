import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  const HeadingText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12, left: 15),
              child: Text(
                'Current Location',
                style: TextStyle(
                    color: Color(0xFF7B7B7B),
                    fontFamily: 'Lexend',
                    fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Color(0xFF6318AF),
                    size: 20,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    'Hyderabad',
                    style: TextStyle(
                        fontFamily: 'Lexend',
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(width: 150,),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 21),
              child: Icon(
                Icons.play_circle_outline,
                size: 23,
                color: Color(0xFF7F1FE0),
              ),
            ),
            Text(
              'How it works?',
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Lexend',
                fontWeight: FontWeight.w300
              ),
            ),
          ],
        )
      ],
    );
  }
}
