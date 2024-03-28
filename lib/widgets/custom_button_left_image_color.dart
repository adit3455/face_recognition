import 'package:flutter/material.dart';
import 'package:socfindo_page_absensi/shared/theme.dart';

class CustomButtonLeftImageColor extends StatelessWidget {
  final String title;
  final String title2;
  final double width;
  final String icon1;
  final Color bgcolor;

  final Function() onPressed;

  const CustomButtonLeftImageColor({
    Key? key,
    required this.title,
    required this.title2,
    required this.icon1,
    this.width = double.infinity,
    required this.onPressed,
    required this.bgcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: bgcolor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Container(
                padding: EdgeInsets.all(5),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: ImageIcon(
                  AssetImage('assets/' + icon1),
                  color: cPrimaryColor,
                  size: 24,
                ),
              ),
              //Icon(icon1, color: cWhiteColor),
            ),
            Expanded(
                child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    title,
                    style:
                        whiteText.copyWith(fontSize: 16, fontWeight: boldText),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    title2,
                    style:
                        whiteText.copyWith(fontSize: 12, fontWeight: lightText),
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
