import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  Widget? prefixIcon;
  Widget? suffixIcon;
  bool obscureText;
  String? hintText;
  CustomTextFormField(
      {Key? key,
      this.prefixIcon,
      this.suffixIcon,
      this.obscureText = false,
      this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.lightBlue[50],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: TextField(
          obscureText: obscureText,
          obscuringCharacter: "*",
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
