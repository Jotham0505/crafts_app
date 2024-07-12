import 'package:craftplate/widgets_common/heading_text_widget.dart';
import 'package:craftplate/widgets_common/navBar_CenterTile_widget.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedindex = 0;

  void _ontapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Color(0xFFFFFFFF),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildNavBarItem('assets/utilities/home.png', 'Home', 0),
            buildNavBarItem('assets/utilities/wishlist.png', 'Wishlist', 1),
            SizedBox(
              width: 30,
            ),
            buildNavBarItem('assets/utilities/order.png', 'Orders', 2),
            buildNavBarItem('assets/utilities/profile.png', 'Profile', 3),
          ],
        ),
      ),
      floatingActionButton:CenterFloatingTileWidget(), // Center floating tile of the navigation bar
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,


      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // header
            Padding(
              padding: EdgeInsets.only(top: 60, left: 15),
              child: Text(
                'Hi, Monica!',
                style: TextStyle(
                    color: Color(0xFF6318AF),
                    fontFamily: 'Lexend',
                    fontSize: 26),
              ),
            ),
            HeadingText(),
          ],
        ),
      ),
    );
  }












  /*Icon(Icons.play_circle_outline,size: 23,color: Color(0xFF7F1FE0),),
                  Text(
                    'How it works?',
                    style: TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 12,
                      fontWeight: FontWeight.w200
                    ),
                  ),*/





  Widget buildNavBarItem(String image, String label, int index) {
    // nav bar item
    return InkWell(
      onTap: () => _ontapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            image,
            height: 23,
            color: _selectedindex == index ? Color(0xFF6318AF) : Colors.grey,
          ),
          Text(
            label,
            style: TextStyle(
              fontFamily: 'Lexend',
              fontSize: 12,
              color: _selectedindex == index ? Color(0xFF6318AF) : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

