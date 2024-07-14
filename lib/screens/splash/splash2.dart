import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SecondSplashScreen extends StatefulWidget {
  const SecondSplashScreen({super.key});

  @override
  State<SecondSplashScreen> createState() => _SecondSplashScreenState();
}

class _SecondSplashScreenState extends State<SecondSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF6318AF),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Image(image: AssetImage('assets/splash/logo.png'),height: 120,width: 200,),
             SizedBox(height: 15,),
             Padding(
               padding: const EdgeInsets.only(left: 10),
               child: Image(image: AssetImage('assets/splash/title.png'),height: 40,width: 200,).animate().fadeIn(duration: 500.ms),
             ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Image(image: AssetImage('assets/splash/tagline.png'),height: 30,width: 160,).animate().fadeIn(duration: 700.ms),
              ),
            ],
          ),
        ),
      ),
    );
  }
}