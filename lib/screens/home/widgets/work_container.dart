import 'package:flutter/material.dart';

class workContainer extends StatelessWidget {
  const workContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 720,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromARGB(210, 255, 248, 244),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Row( // 1 
            children: [
              SizedBox(
                width: 10,
              ),
              Image(
                image: AssetImage('assets/utilities/how1.png'),
                height: 80,
                width: 120,
              ),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Customize Menu',style: TextStyle(fontFamily: 'Lexend',fontSize: 20,color: Color(0xff6318AF),fontWeight: FontWeight.w500),),
                  Text('Select items for a single event \nor multiple events',style: TextStyle(fontFamily: 'Lexend',fontSize: 14,color: Colors.black),),
                ],
              )
            ],
          ),
          SizedBox(height: 40,),
          Row( // 2 
            children: [
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Choose Services',style: TextStyle(fontFamily: 'Lexend',fontSize: 20,color: Color(0xff6318AF),fontWeight: FontWeight.w500),),
                  Text('Select the type of services \nfrom varying cutlery, mode of \nserving options, & more',style: TextStyle(fontFamily: 'Lexend',fontSize: 14,color: Colors.black),),
                ],
              ),
              Image(
                image: AssetImage('assets/utilities/how2.png'),
                height: 80,
                width: 120,
              ),
              
            ],
          ),
          SizedBox(height: 40,),
           Row( //3 
            children: [
              SizedBox(
                width: 10,
              ),
              Image(
                image: AssetImage('assets/utilities/how3.png'),
                height: 80,
                width: 120,
              ),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Dynamic Pricing',style: TextStyle(fontFamily: 'Lexend',fontSize: 20,color: Color(0xff6318AF),fontWeight: FontWeight.w500),),
                  Text('Price per plate varies with no. \nof items in a plate and no. of \nplates selected',style: TextStyle(fontFamily: 'Lexend',fontSize: 14,color: Colors.black),),
                ],
              )
            ],
          ),
          SizedBox(height: 40,),
          Row( //4 
            children: [
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Track Your Order',style: TextStyle(fontFamily: 'Lexend',fontSize: 20,color: Color(0xff6318AF),fontWeight: FontWeight.w500),),
                  Text('Track the order status and \nseek help from the executives \nanytime',style: TextStyle(fontFamily: 'Lexend',fontSize: 14,color: Colors.black),),
                ],
              ),
              Image(
                image: AssetImage('assets/utilities/how4.png'),
                height: 80,
                width: 120,
              ),
              
            ],
          ),
          SizedBox(height: 40,),
           Row( //5 
            children: [
              SizedBox(
                width: 10,
              ),
              Image(
                image: AssetImage('assets/utilities/how5.png'),
                height: 80,
                width: 120,
              ),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Taste Your Samples',style: TextStyle(fontFamily: 'Lexend',fontSize: 20,color: Color(0xff6318AF),fontWeight: FontWeight.w500),),
                  Text('Explode your taste bud with \nsamples of what you order(on \nrequest for eligible orders)',style: TextStyle(fontFamily: 'Lexend',fontSize: 14,color: Colors.black),),
                ],
              )
            ],
          ),
          SizedBox(height: 40,),
          Row( //6 
            children: [
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Enjoy Food and Services',style: TextStyle(fontFamily: 'Lexend',fontSize: 20,color: Color(0xff6318AF),fontWeight: FontWeight.w500),),
                  Text('Enjoy event with delicious \nand customized food ',style: TextStyle(fontFamily: 'Lexend',fontSize: 14,color: Colors.black),),
                ],
              ),
              Image(
                image: AssetImage('assets/utilities/how6.png'),
                height: 80,
                width: 120,
              ),
              
            ],
          ),
        ],
      ),
    );
  }
}
