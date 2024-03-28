import 'dart:core';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:socfindo_page_absensi/utils/shared_preferences.dart';

class DateModule {
  bool checkBetweenTwoDates(String datenow, String date1, String date2) {
    DateTime startDate = DateTime.parse(date1);
    DateTime endDate = DateTime.parse(date2);

    DateTime now = DateTime.parse(datenow);

    // print('now: $now');
    // print('startDate: $startDate');
    // print('endDate: $endDate');
    // print(startDate.isBefore(now));
    // print(endDate.isAfter(now));

    if (startDate.isBefore(now) && endDate.isAfter(now)) {
      return true;
    } else {
      return false;
    }
  }

  String getSystemDate(String datenow, String dateUp) {
    DateTime now = DateTime.now();
    DateTime startDate =
        DateTime.parse(DateFormat('yyyy-MM-dd 00:00:00').format(now));
    DateTime endDate =
        DateTime.parse(DateFormat('yyyy-MM-dd $dateUp').format(now));

    if (startDate.isBefore(now) && endDate.isAfter(now)) {
      DateTime yesterday = now.subtract(Duration(days: 1));
      DateTime getYesterday =
          DateTime.parse(DateFormat('yyyy-MM-dd').format(yesterday));
      return getYesterday.toString();
    } else {
      DateTime getToday = DateTime.parse(DateFormat('yyyy-MM-dd').format(now));
      return getToday.toString();
    }
  }

  Set<Object> fiveminutes() {
    DateTime now = DateTime.now();
    DateTime startDate =
        DateTime.parse(DateFormat('yyyy-MM-dd 00:00:00').format(now));
    DateTime fiveminut = now.subtract(const Duration(minutes: 5));
    DateTime endDate =
        DateTime.parse(DateFormat('yyyy-MM-dd').format(fiveminut));
    return {startDate, endDate};
  }

  Set<Object> customDayDate(String datenow) {
    //String cutOffTime = Config().cutOffTime.toString();

    String cutOffTime =
        (UserSharedPreferences().getConf('cutofftime').toString().isEmpty ||
                UserSharedPreferences().getConf('cutofftime').toString() ==
                    'null' ||
                UserSharedPreferences().getConf('cutofftime').toString() == '')
            ? '07:00:00'
            : UserSharedPreferences().getConf('cutofftime').toString();

    // print('check-cut-off');
    // print(cutOffTime);
    var cutOffData = cutOffTime.split(':');
    // print(cutOffData);
    // print(cutOffData[0]);
    int cutOffNumber =
        (cutOffData[0].toString().isNotEmpty) ? int.parse(cutOffData[0]) : 0;

    // print(cutOffNumber);

    const TimeOfDay startTime = TimeOfDay(hour: 00, minute: 00);
    TimeOfDay endTime = TimeOfDay(hour: cutOffNumber, minute: 00);

    DateTime nowDate = DateTime.parse(datenow);
    DateTime tomorrow = nowDate.add(const Duration(days: 1));

    DateTime endDate =
        DateTime.parse(DateFormat('yyyy-MM-dd $cutOffTime').format(tomorrow));
    DateTime startDate =
        DateTime.parse(DateFormat('yyyy-MM-dd $cutOffTime').format(nowDate));

    if (isValidTimeRange(startTime, endTime)) {
      DateTime yesterday = nowDate.subtract(const Duration(days: 1));
      startDate = DateTime.parse(
          DateFormat('yyyy-MM-dd $cutOffTime').format(yesterday));
      endDate =
          DateTime.parse(DateFormat('yyyy-MM-dd $cutOffTime').format(nowDate));
    }
    //print(startDate);
    //print(endDate);
    return {startDate, endDate};
    //Sample: print(customDayDate('2023-11-09', '07:00:00').first);
  }

  bool isValidTimeRange(TimeOfDay startTime, TimeOfDay endTime) {
    TimeOfDay now = TimeOfDay.now();
    return ((now.hour > startTime.hour) ||
            (now.hour == startTime.hour && now.minute >= startTime.minute)) &&
        ((now.hour < endTime.hour) ||
            (now.hour == endTime.hour && now.minute <= endTime.minute));
  }

  // void testdulu() {
  //   const TimeOfDay startTime = TimeOfDay(hour: 00, minute: 00);
  //   const TimeOfDay endTime = TimeOfDay(hour: 09, minute: 42);
  //   print(isValidTimeRange(startTime, endTime));
  // }

  int getDuration(String date1, String date2, String typeDiff) {
    DateTime dt1 = DateTime.parse(date1);
    DateTime dt2 = DateTime.parse(date2);
    Duration diff = dt1.difference(dt2);

    switch (typeDiff) {
      case "days":
        return diff.inDays;
      case "hours":
        return diff.inHours;
      case "minutes":
        return diff.inMinutes;
      case "seconds":
        return diff.inSeconds;
      default:
        return diff.inMinutes;
    }
    // print(diff.inDays);
    // //output (in days): 1198

    // print(diff.inHours);
    // //output (in hours): 28752

    // print(diff.inMinutes);
    // //output (in minutes): 1725170

    // print(diff.inSeconds);
    // //output (in seconds): 103510200
    // return diff.inMinutes;
  }
}
