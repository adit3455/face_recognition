import 'package:flutter/material.dart';
import 'package:socfindo_page_absensi/shared/theme.dart';

class CustomTextFieldOnly extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;

  const CustomTextFieldOnly({
    Key? key,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: cBlackColor,
      obscureText: obscureText,
      controller: controller,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: hintText,
          suffixIcon: (obscureText)
              ? IconButton(
                  icon: Icon(
                    //_passwordVisible? Icons.visibility:Icons.visibility_off,
                    Icons.visibility,
                    color: Colors.grey,
                  ),
                  onPressed: null,
                )
              : null,
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
            color: cPrimaryColor,
          ))),
    );
  }
}
