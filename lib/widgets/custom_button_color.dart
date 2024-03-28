import 'package:flutter/material.dart';
import 'package:socfindo_page_absensi/shared/theme.dart';

class CustomButtonColor extends StatelessWidget {
  final String title;
  final double width;
  final Function() onPressed;
  final Color color;

  const CustomButtonColor({
    Key? key,
    required this.title,
    this.width = double.infinity,
    required this.onPressed,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 55,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(defaultRadius),
          ),
        ),
        child: Text(
          title,
          style: whiteText.copyWith(fontSize: 20, fontWeight: mediumText),
        ),
      ),
    );
  }
}
