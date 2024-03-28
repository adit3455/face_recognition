import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomButtonIconColor extends StatelessWidget {
  final String title;
  final double width;
  final IconData icon1;
  final IconData icon2;
  final Color color;

  final Function() onPressed;

  const CustomButtonIconColor({
    Key? key,
    required this.title,
    required this.icon1,
    required this.icon2,
    required this.color,
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
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Icon(icon1, color: cWhiteColor),
            ),
            Expanded(
              child: Text(
                title,
                style: whiteText.copyWith(fontSize: 20, fontWeight: mediumText),
              ),
            ),
            Icon(icon2, color: cWhiteColor),
          ],
        ),
      ),
    );
  }
}
