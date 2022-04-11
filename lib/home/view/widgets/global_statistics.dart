import 'package:data_repository/data_repository.dart';
import 'package:flutter/material.dart';
import 'package:hs_mobile_app/home/home.dart';
import 'package:intl/intl.dart';

class GlobalStatistics extends StatelessWidget {
  const GlobalStatistics(GlobalSummary globalSummary, {Key? key})
      : summary = globalSummary,
        super(key: key);
  final GlobalSummary summary;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        buildCard(
          'CONFIRMED',
          summary.totalConfirmed,
          summary.newConfirmed,
          confirmedColor,
        ),
        buildCard(
            'ACTIVE',
            summary.totalConfirmed -
                summary.totalRecovered -
                summary.totalDeaths,
            summary.newConfirmed - summary.newRecovered - summary.newDeaths,
            activeColor),
        buildCard('RECOVERED', summary.totalRecovered, summary.newRecovered,
            recoveredColor),
        buildCard('DEATH', summary.totalDeaths, summary.newDeaths, deathColor),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
          child: Text(
            'Statistics updated ${DateFormat('yyyy-MM-dd HH:mm:ss').format(summary.date!)}',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildCard(String title, int totalCount, int todayCount, Color color) {
    return Card(
      elevation: 1,
      child: Container(
        height: 100,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: <Widget>[
            Text(
              title,
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Total',
                      style: TextStyle(
                        color: color,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      totalCount.toString().replaceAllMapped(reg, formatFunc),
                      style: TextStyle(
                        color: color,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'Today',
                      style: TextStyle(
                        color: color,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      todayCount.toString().replaceAllMapped(reg, formatFunc),
                      style: TextStyle(
                        color: color,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
