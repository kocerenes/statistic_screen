import 'package:flutter/material.dart';
import 'package:statistic_screen/statistic_list.dart';


import 'helper/all_statistic.dart';
import 'model/statistic.dart';

class StatisticPage extends StatefulWidget {
  const StatisticPage({Key? key}) : super(key: key);

  @override
  _StatisticPageState createState() => _StatisticPageState();
}

class _StatisticPageState extends State<StatisticPage> {

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String Date = "";
  String GroupName = "";
  String PassingTime = "";
  String CorrectNumber = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Center(
          child: Text("İstatistikler",style: TextStyle(fontSize: 24)),
        ),
      ),
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [

          Expanded(
            flex: 1,
            child: StatisticList(),
          ),
        ],
      ),
    );
  }




}

