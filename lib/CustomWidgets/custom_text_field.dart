import 'package:flutter/material.dart';

import '../global.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,
    required this.hintText,
    required this.prefixIcon,
    this.obscureText = false,
  });
  final String hintText;
  final IconData prefixIcon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Card(
        elevation: 2,
        child: TextField(
          style: setTextStyle(color: primaryTextColor, size: 15),
          obscureText: obscureText,
          textAlignVertical: TextAlignVertical.center,
          cursorColor: primaryColor,
          decoration: InputDecoration(
            filled: true,
            fillColor: secondaryColor,
            hintText: hintText,
            contentPadding: const EdgeInsets.all(8),
            hintStyle: setTextStyle(color: primaryTextColor, size: 15),
            prefixIcon: Icon(
              prefixIcon,
              color: Colors.black,
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
