import 'package:craftplate/screens/Login/otp_page.dart';
import 'package:craftplate/utils/constants/colors.dart';
import 'package:craftplate/widgets_common/textButton_widget.dart';
import 'package:craftplate/widgets_common/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipPath(
              child: Container(
                height: 240,
                padding: EdgeInsets.all(0),
                child: Stack(
                  children: [
                    Image(image: AssetImage('assets/utilities/curved.png'),height: 234,),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50,left: 80,),
                          child: Image(
                            image: AssetImage('assets/splash/logo.png'),
                            height: 107,
                            width: 107,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 130,right: 20),
                          child: Text(
                              'CraftMyPlate',
                              style: TextStyle(
                                fontFamily: 'Lexend',
                                fontSize: 20,
                                color: Color(0xFFFCFFF7)
                              ),
                            ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                'Login or Signup',
                style: TextStyle(
                  fontFamily: 'Lexend',
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.grey
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            textFormFieldWidget(labelText: '+91   Enter Phone number'), // widget for textfield
             SizedBox(
              height: 20,
            ),
            TextButtonWidget(onpressed: () => Get.to(() => OTPPage()), title: 'Continue',), // widget for button

            Padding(
              padding: const EdgeInsets.only(
                top: 280
              ),
              child: Column(
                children: [
                  Text(
                    'By continuing, you agree to our',
                    style: TextStyle(
                      fontFamily: 'Lexend',
                      fontWeight: FontWeight.w300,
                      fontSize: 13,
                      color: Colors.grey
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Terms of Service ',
                        style: TextStyle(
                          fontFamily: 'Lexend',
                          fontWeight: FontWeight.w300,
                          fontSize: 13,
                          color: Colors.grey,
                          decoration: TextDecoration.underline
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text(
                    'Privacy Policy',
                    style: TextStyle(
                      fontFamily: 'Lexend',
                      fontWeight: FontWeight.w300,
                      fontSize: 13,
                      color: Colors.grey,
                      decoration: TextDecoration.underline
                    ),
                  ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




