import 'package:flutter/material.dart';

import 'helper/all_statistic.dart';
import 'model/statistic.dart';

class StatisticList extends StatelessWidget {
  const StatisticList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DataHelper.add();
    List<Statistic> allStatistic = DataHelper.allAddedStatistics;
    return allStatistic.isNotEmpty ? ListView.builder(itemCount: allStatistic.length,itemBuilder: (context, index){
      return Padding(
        padding: const EdgeInsets.all(2.0),
        child: Card(
          child: ListTile(
            title: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
              child: Text(allStatistic[index].groupName.toString().padRight(35) + " " + allStatistic[index].date.toString(), style: TextStyle(fontSize: 20)),
            ),
            subtitle: Text(
                allStatistic[index].passingTime.toString()
                    + " - " + allStatistic[index].correctNumber.toString() + " - " + allStatistic[index].wrongNumber.toString(),
                style: TextStyle(fontSize: 18)
            ),
          ),
        ),
      );
    }): const Center(child: Text("İstatistik bulunmamakta!", style: TextStyle(fontSize: 24),));
  }
}
