import 'package:flutter/material.dart';

class ColorConst {
  static Color primary = hexToColor('#116834');
  static Color white = hexToColor('#FFFFFF');
  static Color backgroundGrey = hexToColor('#EDEDEE');
  static Color textGrey = hexToColor('#757C83');
  static Color greyNanggung = hexToColor('#F5F5F5');
  static Color sliderRight = hexToColor('#F9F0EB');
  static Color sliderLeft = hexToColor('#E9F6EB');
  static Color redWarning = hexToColor('#F9383E');
}

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex));

  return Color(int.parse(hex.substring(1), radix: 16) +
      (hex.length == 7 ? 0xFF000000 : 0x00000000));
}
