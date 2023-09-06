import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SCLinearPercentIndicator extends StatelessWidget {
  const SCLinearPercentIndicator({
    required this.percent,
    this.color,
    this.width = 93,
    this.height = 5,
    super.key,
  });
  // The percentage value to display in the indicator
  final double percent;
  // The color of the progress indicator
  final Color? color;
  // The width of the indicator
  final double width;
  // The height of the indicator
  final double height;

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      width: width,
      lineHeight: height,
      percent: percent,
      backgroundColor: Colors.grey,
      progressColor: Colors.blue,
    );
  }
}
