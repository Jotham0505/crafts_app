import 'package:craftplate/screens/splash/splash2.dart';
import 'package:flutter/material.dart';

class FirstSplashScreen extends StatefulWidget {
  const FirstSplashScreen({super.key});

  @override
  State<FirstSplashScreen> createState() => _FirstSplashScreenState();
}

class _FirstSplashScreenState extends State<FirstSplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(Duration(seconds: 2), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => SecondSplashScreen()),
        );
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            color: Color.fromARGB(255, 229, 212, 149),
            child: Image(
              image: AssetImage('assets/splash/bg.png'),
              fit: BoxFit.fill,
            ),
          ),

          Container(
            padding: EdgeInsets.only(top: 310,left: 100),
            child: Column(
              children: [
                Image(image: AssetImage('assets/splash/logo.png'),height: 100,),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Image(image: AssetImage('assets/splash/welcome.png')),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}