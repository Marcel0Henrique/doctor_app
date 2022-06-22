import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  FormFieldValidator<String>? validator;
  TextEditingController? controller;
  Widget? prefixIcon;
  Widget? suffixIcon;
  bool obscureText;
  String? hintText;
  CustomTextFormField(
      {Key? key,
      this.validator,
      this.controller,
      this.prefixIcon,
      this.suffixIcon,
      this.obscureText = false,
      this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 225, 245, 254),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: TextFormField(
          validator: validator,
          controller: controller,
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
