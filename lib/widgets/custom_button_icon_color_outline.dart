import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomButtonIconColorOutline extends StatelessWidget {
  final String title;
  final double width;
  final IconData icon1;
  final IconData icon2;
  final Color color;

  final Function() onPressed;

  const CustomButtonIconColorOutline({
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
          //backgroundColor: color,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: color, width: 1, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Icon(icon1, color: color),
            ),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 20, fontWeight: mediumText, color: color),
              ),
            ),
            Icon(icon2, color: color),
          ],
        ),
      ),
    );
  }
}
