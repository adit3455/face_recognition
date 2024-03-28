import 'package:intl/intl.dart';

class Nomor {
  static int convertNumber(dynamic number) {
    if (number != null && number! > 0) {
      return number;
    } else {
      return 0;
    }
  }
}
