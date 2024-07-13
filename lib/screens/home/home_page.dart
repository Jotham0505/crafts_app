import 'package:craftplate/screens/home/widgets/craft_card_widget.dart';
import 'package:craftplate/screens/home/widgets/menu_card_widget.dart';
import 'package:craftplate/screens/home/widgets/promo_slider.dart';
import 'package:craftplate/screens/home/widgets/rounded_image_banner.dart';
import 'package:craftplate/screens/home/widgets/searchBar_container.dart';
import 'package:craftplate/screens/home/widgets/service_card_widget.dart';
import 'package:craftplate/screens/home/widgets/starter_main_Card_widget.dart';
import 'package:craftplate/screens/home/widgets/topCategories_widget.dart';
import 'package:craftplate/widgets_common/heading_segment_text_widget.dart';
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
      bottomNavigationBar: Container(
        height: 75,
        child: BottomAppBar(
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
      ),
      floatingActionButton:
          CenterFloatingTileWidget(), // Center floating tile of the navigation bar
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
            HeadingText(), // sub title heading widget

            // carousel slider

            Stack(
              children: [
                TPromoSlider(
                  Banners: [
                    TRoundedImage(
                      ImageUrl: 'assets/slider/banner1.png',
                      applyImageRadius: true,
                    ),
                    TRoundedImage(
                      ImageUrl: 'assets/slider/banner2.png',
                      applyImageRadius: true,
                    ),
                  ],
                ),
                Container(
                  width: 225,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 33, left: 20),
                    child: Text(
                      "Enjoy your first order, the taste of our delicious food!",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Lexend',
                          fontSize: 22),
                      maxLines: 3,
                    ),
                  ),
                ),
              ],
            ),

            TSearchContainer(
                text: 'Search food or events',
                searchbarSize: 10), // Search bar Container

            SizedBox(
              height: 25,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Start Crafting',
                style: TextStyle(
                    color: Color(0xFF6318AF),
                    fontFamily: 'Lexend',
                    fontSize: 25),
              ),
            ),

            SizedBox(
              height: 15,
            ),

            Row(
              children: [
                CraftingCard(
                  // Crafting Reusable card
                  image: 'assets/utilities/craft1.png',
                  text: 'Default Platters',
                ),
                SizedBox(
                  width: 3,
                ),
                CraftingCard(
                  image: 'assets/utilities/craft2.png',
                  text: 'Craft Your Own',
                ),
              ],
            ),

            SizedBox(
              height: 40,
            ),

            Container(
              // Menu reusable card list
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  menuReusableCard(),
                  menuReusableCard(),
                  menuReusableCard(),
                  menuReusableCard(),
                ],
              ),
            ),

            segmentHeadingText(
              text: 'Top Categories',
              subText: 'see more',
              padding: EdgeInsets.only(right: 90),
            ), // Heading text widget

            CategoriesSlider(), // Top Categories sliding widget

            SizedBox(
              height: 17,
            ),

            segmentHeadingText(
              text: 'Starters',
              subText: 'see more',
              padding: EdgeInsets.only(right: 140),
            ), // heading text widget

            SizedBox(
              height: 15,
            ),

            Container(
              height: 170,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  startersAndMainCard(
                    text: 'Grill Chicken',
                    image: 'assets/starters/s1.png',
                  ),
                  startersAndMainCard(
                    text: 'Veggies Fry',
                    image: 'assets/starters/s3.png',
                  ),
                  startersAndMainCard(
                    text: 'Mushroom Fry',
                    image: 'assets/starters/s1.png',
                  ),
                  startersAndMainCard(
                    text: 'Mushroom Fry',
                    image: 'assets/starters/s1.png',
                  ),
                  startersAndMainCard(
                    text: 'Mushroom Fry',
                    image: 'assets/starters/s1.png',
                  ),
                  startersAndMainCard(
                    text: 'Grill Chicken',
                    image: 'assets/starters/s1.png',
                  ),
                  startersAndMainCard(
                    text: 'Grill Chicken',
                    image: 'assets/starters/s1.png',
                  ),
                ],
              ),
            ),

            segmentHeadingText(
              text: 'Main Course',
              subText: 'more main courses',
              padding: EdgeInsets.only(right: 70, bottom: 10),
            ),
            Container(
              height: 170,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  startersAndMainCard(
                    text: 'Grill Chicken',
                    image: 'assets/mains/main3.png',
                  ),
                  startersAndMainCard(
                    text: 'Veggies Fry',
                    image: 'assets/mains/main2.png',
                  ),
                  startersAndMainCard(
                    text: 'Mushroom Fry',
                    image: 'assets/mains/main1.png',
                  ),
                  startersAndMainCard(
                    text: 'Mushroom Fry',
                    image: 'assets/starters/s1.png',
                  ),
                  startersAndMainCard(
                    text: 'Mushroom Fry',
                    image: 'assets/starters/s1.png',
                  ),
                  startersAndMainCard(
                    text: 'Grill Chicken',
                    image: 'assets/starters/s1.png',
                  ),
                  startersAndMainCard(
                    text: 'Grill Chicken',
                    image: 'assets/starters/s1.png',
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'Services',
                style: TextStyle(
                    fontFamily: 'Lexend',
                    fontSize: 22,
                    fontWeight: FontWeight.w500),
              ),
            ),

            SizedBox(
              height: 15,
            ),

            Container(
              // service reusable card
              height: 310,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                serviceCard(
                  image: 'assets/utilities/service1.png',
                  icon: 'assets/utilities/sign1.png',
                  icontext: 'Signature',
                  text1: 'High Quality Disposable Cutlery',
                  text2: 'Elegant Decorations & Table Settings',
                  text3: 'Served by Waitstaff',
                  text4: 'Best for Weddings, Corporate Events ',
                ),
                serviceCard(
                  image: 'assets/utilities/service2.png',
                  icon: 'assets/utilities/sign2.png',
                  icontext: 'Value',
                  text1: 'Disposable Cutlery',
                  text2: 'Basic Decorations & Table Settings',
                  text3: 'Served in Buffet Style',
                  text4: 'Best for Birthdays, Family Gathering etc',
                ),
                serviceCard(
                  image: 'assets/utilities/service3.png',
                  icon: 'assets/utilities/sign3.png',
                  icontext: 'Luxury',
                  text1: 'High End Reusable Cutlery',
                  text2: 'Elegant Decorations & Table Settings',
                  text3: 'Served by Professional Waitstaff',
                  text4: 'Best for Celebrity Parties, Political Events',
                ),
              ]),
            ),
            
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'How does it work',
                style: TextStyle(
                  fontFamily: 'Lexend',
                  fontSize: 20
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 2000,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFF9EFE9),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image(
                        image: AssetImage('assets/utilities/how1.png'),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

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
