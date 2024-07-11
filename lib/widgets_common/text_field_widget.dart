import 'package:flutter/material.dart';


class textFormFieldWidget extends StatelessWidget {
  const textFormFieldWidget({
    super.key, required this.labelText,
  });

  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: SizedBox(
        height: 44,
        width: 300,
        child: TextFormField(
          decoration: InputDecoration(
            labelText: labelText,
            labelStyle: TextStyle(
              fontFamily: 'Lexend',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.grey
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: Colors.blue,
                width: 2.0,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: Color.fromARGB(255, 236, 230, 230),
                width: 2.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}