import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {

  const TextButtonWidget({
    super.key, required this.onpressed, required this.title,
  });

  final VoidCallback onpressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: SizedBox(
        width: 300,
        height: 44,
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF6318AF)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
              )
            )
          ),
          onPressed: onpressed,
          child: Text(
            title,
            style: TextStyle(
              fontFamily: 'Lexend',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.white
            ),
          ) 
        ),
      ),
    );
  }
}