import 'package:flutter/material.dart';


class startersAndMainCard extends StatelessWidget {
  const startersAndMainCard({
    super.key, required this.text, required this.image,
  });

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
       padding: EdgeInsets.only(left: 14),
       child: Stack(
         children: [
           Container(
             padding: EdgeInsets.only(bottom: 33),
             width: 145,
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
             padding: const EdgeInsets.only(top: 103, left: 32),
             child: Text(
               text,
               style: TextStyle(
                   fontFamily: 'Lexend',
                   fontSize: 14,
                   fontWeight: FontWeight.w400),
             ),
           ),
         ],
       ),
     );
  }
}