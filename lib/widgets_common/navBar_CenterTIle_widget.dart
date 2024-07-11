import 'package:flutter/material.dart';

class CenterFloatingTileWidget extends StatelessWidget {
  const CenterFloatingTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Color.fromARGB(255, 250, 193, 22),width: 2)
        ),
        child: CircleAvatar(
          radius: 28,
          backgroundColor: Color(0xFF6318AF),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 4),
                child: Image(
                  image: AssetImage('assets/splash/logo.png'),
                  height: 35,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}