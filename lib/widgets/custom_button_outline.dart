import 'package:flutter/material.dart';
import 'package:socfindo_page_absensi/shared/theme.dart';

class CustomButtonOutline extends StatelessWidget {
  final String title;
  final double width;
  final Color? bgColor;
  final Color? textColor;
  final Function() onPressed;

  const CustomButtonOutline({
    Key? key,
    required this.title,
    this.width = double.infinity,
    this.bgColor,
    this.textColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 55,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: bgColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(
                color: cPrimaryColor, width: 1, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        child: Text(
          title,
          style:
              TextStyle(color: textColor, fontSize: 18, fontWeight: mediumText),
          //style: whiteText.copyWith(fontSize: 18, fontWeight: mediumText),
        ),
      ),
    );
  }
}
