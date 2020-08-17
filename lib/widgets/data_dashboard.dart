import 'package:flutter/material.dart';
import './counter.dart';
import 'package:covid_19/constant.dart';

class DataDashboard extends StatelessWidget {
  final int confirmed;
  final int deaths;
  final int recovered;
  final int active;

  DataDashboard({this.active, this.deaths, this.recovered, this.confirmed});

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
                number: active,
                title: "Active",
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
        ],
      ),
    );
  }
}
