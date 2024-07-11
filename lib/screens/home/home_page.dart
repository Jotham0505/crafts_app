import 'package:craftplate/widgets_common/navBar_CenterTIle_widget.dart';
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
      bottomNavigationBar:BottomAppBar(
        color: Color(0xFFFFFFFF),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildNavBarItem('assets/utilities/home.png','Home',0),
            buildNavBarItem('assets/utilities/wishlist.png','Wishlist',1),
            SizedBox(
              width: 30,
            ),
            buildNavBarItem('assets/utilities/order.png','Orders',2),
            buildNavBarItem('assets/utilities/profile.png','Profile',3),
          ],
        ),
      ),
      floatingActionButton: CenterFloatingTileWidget(), // Center floating tile of the navigation bar
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget buildNavBarItem(String image, String label, int index){
    return InkWell(
      onTap: () => _ontapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image(image: AssetImage(image),height: 25,color: _selectedindex == index ? Color(0xFF6318AF) : Colors.grey,),
          Text(label,style: TextStyle(
            fontFamily: 'Lexend',
            fontSize: 12,
            color: _selectedindex == index ? Color(0xFF6318AF) : Colors.grey,
          ),),
        ],
      ),
    );
  }
}

