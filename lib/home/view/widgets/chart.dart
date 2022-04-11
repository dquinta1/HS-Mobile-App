import 'package:charts_flutter/flutter.dart' as charts;
import 'package:data_repository/data_repository.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const Chart({Key? key, required this.seriesList, required this.animate})
      : super(key: key);

  final List<charts.Series<TimeCase, DateTime>> seriesList;
  final bool animate;

  @override
  Widget build(BuildContext context) {
    return charts.TimeSeriesChart(
      seriesList,
      animate: animate,
      domainAxis: const charts.EndPointsTimeAxisSpec(),
    );
  }
}
