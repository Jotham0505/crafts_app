import 'package:flutter/material.dart';

class serviceCard extends StatelessWidget {
  const serviceCard({
    super.key, required this.image, required this.icon, required this.icontext, required this.text1, required this.text2, required this.text3, required this.text4,
  });

  final String image,icon,icontext,text1,text2,text3,text4;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15,bottom: 9),
      child: Container(
      width: 280,
      height: 300,
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
      child: Stack(
        children: [
          Column(
        children: [
          Padding(
                padding: EdgeInsets.only(top: 15),
                child: Container(
                  width: 250,
                  height: 110,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Image(
                    image: AssetImage(icon),
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    icontext,
                    style: TextStyle(
                        fontFamily: 'Lexend',
                        fontSize: 18,
                        color: Color(0xFF6318AF)),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Image(
                    image: AssetImage('assets/utilities/star.png'),
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    text1,
                    style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Image(
                    image: AssetImage('assets/utilities/star.png'),
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    text2,
                    style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Image(
                    image: AssetImage('assets/utilities/star.png'),
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    text3,
                    style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Image(
                    image: AssetImage('assets/utilities/star.png'),
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    text4,
                    style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 150),
                child: Text(
                  'Know more',
                  style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 16,
                      color: Color(0xFF6318AF)),
                ),
              )
            ],
          ),
          Padding(
              padding: EdgeInsets.only(left: 160, top: 0),
              child: Container(
                height: 28,
                width: 120,
                decoration: BoxDecoration(
                  color: Color(0xFF6318AF),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                ),
                child: Center(
                  child: Text(
                    'Recommended',
                    style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
      ),
        
    );
  }
}