import 'package:craftplate/screens/home/home_page.dart';
import 'package:craftplate/screens/Login/otp_page.dart';
import 'package:craftplate/screens/Login/signup_page.dart';
import 'package:craftplate/services/AuthService.dart';
import 'package:craftplate/utils/constants/colors.dart';
import 'package:craftplate/widgets_common/textButton_widget.dart';
import 'package:craftplate/widgets_common/text_field_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthService _auth = AuthService();
  
  LoginPage({super.key});

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
            textFormFieldWidget(labelText: 'Enter Email', isobscure: false, controller: emailController,), // email
             SizedBox(
              height: 20,
            ),
            textFormFieldWidget(labelText: 'Enter Password', isobscure: true, controller: passwordController,), // password
            SizedBox(
              height: 20,
            ),
            TextButtonWidget( // text button widget for login 
              onpressed: () async{
                String email = emailController.text;
                String password = passwordController.text;
                User? user = await _auth.signInWithEmail(email, password);
                if (user != null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Logged in successfully'),
                      backgroundColor: Color(0xff6318AF),
                      duration: Duration(seconds: 3),
                      behavior: SnackBarBehavior.floating,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                    ),
                  );
                  Get.to(() => MyHomePage());
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Error logging in'),
                      backgroundColor: Color(0xff6318AF),
                      duration: Duration(seconds: 3),
                      behavior: SnackBarBehavior.floating,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                    ),
                  );
                }
              },
              title: 'Log in',
            ), // widget for button

            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    'Create an acoount',
                    style: TextStyle(
                      fontFamily: 'Lexend',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: Colors.grey
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  GestureDetector(
                    onTap: () => Get.to(() => nameAndEmailPage()),
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        fontFamily: 'Lexend',
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color(0xFF6318AF)
                      ),
                    ),
                  ),
                  SizedBox(width: 50,),
                  GestureDetector(
                    onTap: () => Get.to(() => OTPPage()),
                    child: Text(
                      'Forgot Password  ',
                      style: TextStyle(
                        fontFamily: 'Lexend',
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color(0xFF6318AF)
                      ),
                    ),
                  ),
              ],
            ),

            Padding( // terms and services
              padding: const EdgeInsets.only(
                top: 200
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




