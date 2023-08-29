import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SCLinearPercentIndicator extends StatelessWidget {
  const SCLinearPercentIndicator({
    required this.percent,
    this.progressColor = Colors.blue,
    this.backgroundColor = Colors.grey,
    this.width = 93,
    this.lineHeight = 15,
    super.key,
  });
  // The percentage value to display in the indicator
  final double percent;
  // The color of the progress indicator
  final Color backgroundColor;
  // The width of the indicator
  final double width;
  // The height of the indicator
  final double lineHeight;
  final Color progressColor;

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      width: width,
      lineHeight: lineHeight,
      percent: percent,
      backgroundColor: backgroundColor,
      progressColor: progressColor,
    );
  }
}
