import '../model/statistic.dart';

class DataHelper{
  static List<Statistic> allAddedStatistics = [];

  static addStatistic(Statistic statistic){

    allAddedStatistics.add(statistic);
  }

  static add(){
    var addedStatistic = Statistic(date: "17.07.2022",
        groupName: "Hayvanlar-Test",
        passingTime: "20sn",
        correctNumber: "7D",
        wrongNumber: "3Y"
        );
    addStatistic(addedStatistic);
  }



}