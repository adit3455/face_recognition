import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../shared/theme.dart';

class CirclePercent extends StatelessWidget {
  final double percent;

  const CirclePercent({
    Key? key,
    this.percent = 0.2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 20.0,
      lineWidth: 10.0,
      percent: percent,
      progressColor: percent == 1 ? cRedColor : cPrimaryColor,
      animation: true,
      backgroundColor: cSoftBlackColor,
    );
  }
}
