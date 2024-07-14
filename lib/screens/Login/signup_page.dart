import 'package:craftplate/services/AuthService.dart';
import 'package:craftplate/widgets_common/textButton_widget.dart';
import 'package:craftplate/widgets_common/text_field_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class nameAndEmailPage extends StatelessWidget {
  nameAndEmailPage({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController fullnameController = TextEditingController();
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 65),
              child: Row(
                children: [
                  IconButton(
                    // icon button backwards
                    onPressed: () => Get.back(),
                    icon: Icon(Icons.arrow_back_ios_new_outlined),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              // title
              padding: const EdgeInsets.only(left: 28, top: 10),
              child: Text(
                'Just a step away !',
                style: TextStyle(
                    fontFamily: 'Lexend',
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
              ),
            ),

            SizedBox(
              height: 30,
            ),

            textFormFieldWidget( // full name
              labelText: 'Fullname*',
              isobscure: false,
              controller: fullnameController,
            ), // textfiled 1
            SizedBox(
              height: 20,
            ),

            textFormFieldWidget( // email
              labelText: 'Email ID*',
              isobscure: false,
              controller: emailController,
            ), // textfiled 2
            SizedBox(
              height: 20,
            ),

            textFormFieldWidget( // password
              labelText: 'Password*',
              isobscure: true,
              controller: passwordController,
            ), // textfiled 3

            SizedBox(
              height: 280,
            ),

            TextButtonWidget( // Text Button widget
              onpressed: () async{
                String email = emailController.text;
                String password = passwordController.text;
                User? user = await _auth.registerWithEmail(email, password);
                if (user != null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Account successfully created'),
                      backgroundColor: Color(0xff6318AF),
                      duration: Duration(seconds: 3),
                      behavior: SnackBarBehavior.floating,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                    ),
                  );
                  Get.back();
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Error signing up'),
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
              title: "Create Account",
            ), // textbutton
          ],
        ),
      ),
    );
  }
}
