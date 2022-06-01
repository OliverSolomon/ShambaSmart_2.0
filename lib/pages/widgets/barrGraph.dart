import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AmmoniaGraph extends StatefulWidget {
  final Widget child;

  AmmoniaGraph() : super(key: key);

  _AmmoniaGraphState createState() => _AmmoniaGraphState();
}

class _AmmoniaGraphState extends State<AmmoniaGraph> {
  late List<charts.Series<Pollution, String>> _seriesData;

  _generateData() {
    var data1 = [
      Pollution(1980, 'USA', 30),
      Pollution(1980, 'Asia', 40),
      Pollution(1980, 'Europe', 10),
    ];
    var data2 = [
      Pollution(1985, 'USA', 100),
      Pollution(1980, 'Asia', 150),
      Pollution(1985, 'Europe', 80),
    ];
    var data3 = [
      Pollution(1985, 'USA', 200),
      Pollution(1980, 'Asia', 300),
      Pollution(1985, 'Europe', 180),
    ];

    _seriesData.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2017',
        data: data1,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff990099)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2018',
        data: data2,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xff109618)),
      ),
    );

    _seriesData.add(
      charts.Series(
        domainFn: (Pollution pollution, _) => pollution.place,
        measureFn: (Pollution pollution, _) => pollution.quantity,
        id: '2019',
        data: data3,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Pollution pollution, _) =>
            charts.ColorUtil.fromDartColor(Color(0xffff9900)),
      ),
    );
  }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _seriesData = <charts.Series<Pollution, String>>[];
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: charts.BarChart(
        _seriesData,
        animate: true,
        // barGroupingType: charts.BarGroupingType.grouped,
        //behaviors: [new charts.SeriesLegend()],
        animationDuration: const Duration(seconds: 5),
      ),
    );
  }
}

class Pollution {
  String place;
  int year;
  int quantity;

  Pollution(this.year, this.place, this.quantity);
}
