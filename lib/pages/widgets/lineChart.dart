import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'dart:math';
// import 'package:flutter_sparkline/flutter_sparkline.dart';

class Line extends StatefulWidget {
  const Line({
    Key? key,
  }) : super(key: key);

  @override
  State<Line> createState() => _LineState();
}

class _LineState extends State<Line> {
  var data = [0.0, 1.0, 1.5, 2.0, 0.0, 3.0, -1.0, -0.5, 1.0, 3.0];
  final List<FlSpot> dummyData1 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });
  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        borderData: FlBorderData(show: false),
        lineBarsData: [
          // The red line
          LineChartBarData(
            spots: dummyData1,
            isCurved: true,
            barWidth: 3,
            colors: [
              Colors.red,
            ],
          ),
          // The orange line
        ],
      ),
    );
  }
}
