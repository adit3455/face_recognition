import 'dart:core';
import 'package:intl/intl.dart';
import 'dart:math';

class RandomNumber {
  String getRandom() {
    Random random = Random();
    int randomNumber1 = random.nextInt(100);
    int randomNumber2 = random.nextInt(100);
    int randomNumber3 = random.nextInt(100);

    DateTime now = DateTime.now();
    String datenow = DateFormat('yyyyMMddkkmmss').format(now);
    return (datenow +
        randomNumber1.toString() +
        randomNumber2.toString() +
        randomNumber3.toString());
  }

  String getRefID(String truckNumber) {
    // Random random = new Random();
    // int randomNumber1 = random.nextInt(9);
    // int randomNumber2 = random.nextInt(9);
    // int randomNumber3 = random.nextInt(9);
    // int randomNumber4 = random.nextInt(9);

    //BK8912AZ/231108T1148 <--- Berlaku
    //BK1010AA/2310/1878 <-- angka random

    DateTime now = DateTime.now();
    //String _datenow = DateFormat('yyyyMMddkkmmss').format(now);
    String datenow = DateFormat('yyMMdd').format(now);
    String timenow = DateFormat('kkmm').format(now);

    return ('${truckNumber.replaceAll(' ', '')}/${datenow}T$timenow');

    // randomNumber1.toString() +
    // randomNumber2.toString() +
    // randomNumber3.toString() +
    // randomNumber4.toString());
  }

  String getPhotoName(String truckNumber) {
    //BK8912AZ_231108T1148 <--- Berlaku

    DateTime now = DateTime.now();
    //String _datenow = DateFormat('yyyyMMddkkmmss').format(now);
    String datenow = DateFormat('yyMMdd').format(now);
    String timenow = DateFormat('kkmm').format(now);

    return ('${truckNumber.replaceAll(' ', '')}_${datenow}T$timenow');
  }

  String getPhotoTbsName(String tbsName) {
    //BK8912AZ_block_tph_231108T1148 <--- Berlaku
    DateTime now = DateTime.now();
    //String _datenow = DateFormat('yyyyMMddkkmmss').format(now);
    String datenow = DateFormat('yyMMdd').format(now);
    String timenow = DateFormat('kkmm').format(now);
    return ('${tbsName.replaceAll(' ', '').replaceAll('/', '-')}_${datenow}T$timenow');
  }
}
