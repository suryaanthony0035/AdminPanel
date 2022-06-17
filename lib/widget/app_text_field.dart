import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hinText;
  final Widget icon;
  final bool obscureText;

  const AuthTextField({
    Key? key,
    required this.textEditingController,
    required this.hinText,
    required this.icon,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 30,
        right: 30,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                // blurRadius: 3,
                spreadRadius: 2,
                // offset: const Offset(1, 3),
                color: Colors.grey.withOpacity(0.2))
          ]),
      child: TextField(
        obscureText: obscureText,
        controller: textEditingController,
        decoration: InputDecoration(
          hintText: hinText,
          suffixIcon: icon,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(
              width: 1.0,
              color: Colors.white,
            ),
          ),
          //enabled Border
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                width: 1.0,
                color: Colors.white,
              )),
          //border
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}



