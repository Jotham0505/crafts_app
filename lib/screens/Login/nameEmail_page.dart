import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class nameAndEmailPage extends StatelessWidget {
  const nameAndEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 65),
            child: Row(
              children: [
                IconButton(
                      onPressed: () => Get.back(),
                      icon:  Icon(Icons.arrow_back_ios_new_outlined),
                    ),
              ],
              
            ),
                
          ),
          SizedBox(height: 10,),
          Text(
            'Just a step away !',
            style: TextStyle(
              fontFamily: 'Lexend',
              fontWeight: FontWeight.w400,
              fontSize: 20
            ),
          )

          
        ],
      ),
    );
  }
}