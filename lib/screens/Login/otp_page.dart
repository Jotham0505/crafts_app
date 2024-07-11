import 'package:craftplate/screens/home/home_page.dart';
import 'package:craftplate/screens/Login/signup_page.dart';
import 'package:craftplate/widgets_common/otp_textfield_widget.dart';
import 'package:craftplate/widgets_common/textButton_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class OTPPage extends StatelessWidget {
  const OTPPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 65),
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                IconButton(
                  onPressed: () => Get.back(),
                  icon:  Icon(Icons.arrow_back_ios_new_outlined),
                ),
                SizedBox(
                  width: 65,
                ),
                Text(
                  'OTP Verification',
                  style: TextStyle(
                      fontFamily: 'Lexend',
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'We have sent a verification code to',
            style: TextStyle(
              color: Color(0xFF545454 ),
              fontSize: 16,
              fontFamily: 'Lexend'
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '+91-XXXXXX6794',
                style: TextStyle(
                  color: Color(0xFF545454 ),
                  fontSize: 16,
                  fontFamily: 'Lexend',
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.verified,
                color: Colors.lightGreen,
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          OTPTextFieldWidget(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: TextButtonWidget(onpressed: () => Get.to(() => MyHomePage()), title: 'Submit'),
          ),
          SizedBox(
            height: 10,
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text(
                "Did'nt recieve code?",
                style: TextStyle(
                    color: Color(0xFF010F07),
                    fontSize: 16,
                    fontFamily: 'Lexend'),
              ),
              SizedBox(width: 5,),
              Text(
                "Resend Again",
                style: TextStyle(
                    color: Color(0xFF6318AF),
                    fontSize: 16,
                    fontFamily: 'Lexend'),
              ),
             ],
           ),
        ],
      ),
    );
  }
}

