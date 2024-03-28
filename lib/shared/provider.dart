import 'package:flutter/material.dart';

class DataProvider extends ChangeNotifier {
  bool toggleIcon = true;

  toggleIconState() {
    toggleIcon = !toggleIcon;
    notifyListeners();
  }
}
