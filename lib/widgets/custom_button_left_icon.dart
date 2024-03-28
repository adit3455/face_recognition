import 'package:flutter/material.dart';
import 'package:socfindo_page_absensi/shared/theme.dart';

class CustomButtonLeftIcon extends StatelessWidget {
  final String title;
  final double width;
  final IconData icon1;

  final Function() onPressed;

  const CustomButtonLeftIcon({
    Key? key,
    required this.title,
    required this.icon1,
    this.width = double.infinity,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 55,
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: cPrimaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          child: Row(children: [
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Icon(icon1, color: cWhiteColor),
            ),
            Expanded(
                child: Text(title,
                    style: whiteText.copyWith(
                        fontSize: 20, fontWeight: mediumText))),
          ])),
    );
  }
}
