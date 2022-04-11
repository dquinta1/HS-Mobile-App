import 'package:charts_flutter/flutter.dart' as charts;
import 'package:data_repository/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:hs_mobile_app/home/home.dart';

class CountryStatistics extends StatelessWidget {
  const CountryStatistics(this.summaryList, {Key? key}) : super(key: key);
  final List<CountrySummary> summaryList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildCard(
          'CONFIRMED',
          summaryList[summaryList.length - 1].confirmed,
          confirmedColor,
          'ACTIVE',
          summaryList[summaryList.length - 1].active,
          activeColor,
        ),
        buildCard(
          'RECOVERED',
          summaryList[summaryList.length - 1].recovered,
          recoveredColor,
          'DEATH',
          summaryList[summaryList.length - 1].deaths,
          deathColor,
        ),
        buildCardChart(summaryList),
      ],
    );
  }

  Widget buildCard(String leftTitle, int? leftValue, Color leftColor,
      String rightTitle, int? rightValue, Color rightColor) {
    return Card(
      elevation: 1,
      child: Container(
        height: 100,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  leftTitle,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Text(
                  'Total',
                  style: TextStyle(
                    color: leftColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                Text(
                  leftValue.toString().replaceAllMapped(reg, formatFunc),
                  style: TextStyle(
                    color: leftColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  rightTitle,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Text(
                  'Total',
                  style: TextStyle(
                    color: rightColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                Text(
                  rightValue.toString().replaceAllMapped(reg, formatFunc),
                  style: TextStyle(
                    color: rightColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCardChart(List<CountrySummary> summaryList) {
    return SizedBox(
      height: 250,
      child: Card(
        elevation: 1,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Chart(
            seriesList: _createData(summaryList),
            animate: true,
          ),
        ),
      ),
    );
  }

  static List<charts.Series<TimeCase, DateTime>> _createData(
      List<CountrySummary> summaryList) {
    final confirmedData = <TimeCase>[];
    final activeData = <TimeCase>[];
    final recoveredData = <TimeCase>[];
    final deathData = <TimeCase>[];

    for (var item in summaryList) {
      confirmedData.add(TimeCase(date: item.date, cases: item.confirmed));
      activeData.add(TimeCase(date: item.date, cases: item.active));
      recoveredData.add(TimeCase(date: item.date, cases: item.recovered));
      deathData.add(TimeCase(date: item.date, cases: item.deaths));
    }

    return [
      charts.Series<TimeCase, DateTime>(
        id: 'Confirmed',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(confirmedColor),
        domainFn: (TimeCase cases, _) => cases.date!,
        measureFn: (TimeCase cases, _) => cases.cases,
        data: confirmedData,
      ),
      charts.Series<TimeCase, DateTime>(
        id: 'Active',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(activeColor),
        domainFn: (TimeCase cases, _) => cases.date!,
        measureFn: (TimeCase cases, _) => cases.cases,
        data: activeData,
      ),
      charts.Series<TimeCase, DateTime>(
        id: 'Recovered',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(recoveredColor),
        domainFn: (TimeCase cases, _) => cases.date!,
        measureFn: (TimeCase cases, _) => cases.cases,
        data: recoveredData,
      ),
      charts.Series<TimeCase, DateTime>(
        id: 'Death',
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(deathColor),
        domainFn: (TimeCase cases, _) => cases.date!,
        measureFn: (TimeCase cases, _) => cases.cases,
        data: deathData,
      ),
    ];
  }
}
