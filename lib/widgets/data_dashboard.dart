import 'package:flutter/material.dart';
import './counter.dart';
import 'package:covid_19/constant.dart';

class DataDashboard extends StatelessWidget {
  final int infected;
  final int deaths;
  final int recovered;
  final int inHospital;
  final int tested;
  final int totalInHospital;

  DataDashboard(
      {this.infected,
      this.deaths,
      this.recovered,
      this.inHospital,
      this.tested,
      this.totalInHospital});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Counter(
                color: kInfectedColor,
                number: infected,
                title: "Infected",
              ),
              Counter(
                color: kDeathColor,
                number: deaths,
                title: "Deaths",
              ),
              Counter(
                color: kRecovercolor,
                number: recovered,
                title: "Recovered",
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Counter(
                color: kInHospital,
                number: inHospital,
                title: "In hospital",
              ),
              Counter(
                color: kTestColor,
                number: tested,
                title: "Tested",
              ),
              Counter(
                color: kTotalInHospital,
                number: totalInHospital,
                title: "Total hospital",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
