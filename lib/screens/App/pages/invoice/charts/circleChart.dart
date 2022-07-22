// ignore_for_file: must_be_immutable

import 'package:fluent_ui/fluent_ui.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_highlighter/themes/dark.dart';
import 'package:pie_chart/pie_chart.dart';

import '../../../../../theme.dart';

class CircleChart extends StatelessWidget {
  CircleChart(
      {Key? key,
      required this.num1,
      required this.num2,
      this.num3 = 0,
      this.num4 = 0,
      required this.chartType,
      required this.compare1,
      required this.compare2,
      this.compare3,
      this.compare4})
      : super(key: key);
  double num1;
  double num2;
  double num3;
  double num4;
  ChartType chartType;
  String compare1;
  String compare2;
  String? compare3;
  String? compare4;

  @override
  Widget build(BuildContext context) {
     Map<String, double> dataMap = {
      "$compare1($num1ج)   ": num1,
      "$compare2($num2ج)   ": num2,
      "$compare3($num3ج)   ": num3,
      "$compare4($num4ج)   ": num4,
    };
    num3 == 0 ? dataMap.remove("$compare3($num3ج)   ") : null;
    num4 == 0 ? dataMap.remove("$compare4($num4ج)   ") : null;
    return PieChart(
      dataMap: dataMap,
      animationDuration: const Duration(milliseconds: 800),
      chartLegendSpacing: 32,
      chartRadius: MediaQuery.of(context).size.width / 3.2,
      // colorList: [
      //   Colors.orange,
      //   Colors.magenta,
      // ],
      baseChartColor: Colors.red,
      gradientList: const [
        [
          Color.fromARGB(255, 0, 96, 241),
          Color.fromARGB(255, 0, 153, 255),
        ],
        [
          Color.fromARGB(255, 233, 9, 5),
          Color.fromARGB(255, 236, 47, 0),
        ],
        [
          Color.fromARGB(255, 217, 255, 0),
          Color.fromARGB(255, 217, 221, 3),
        ],
        [
          Color.fromARGB(255, 235, 0, 223),
          Color.fromARGB(255, 235, 27, 166),
        ],
      ],
      initialAngleInDegree: -20,
      chartType: chartType,
      ringStrokeWidth: 25,
      centerText: dataMap.length < 3 ? "نسبة $compare1 إلي $compare2" : "",
      centerTextStyle: TextStyle(
          color: FluentTheme.of(context).brightness.isDark
              ? Colors.white
              : Colors.black,
              fontFamily: "Hind3",
              fontSize: 18
              ),
      legendOptions: const LegendOptions(
        showLegendsInRow: false,
        legendPosition: LegendPosition.left,
        showLegends: true,
        legendShape: BoxShape.circle,
      ),
      chartValuesOptions: const ChartValuesOptions(
          showChartValueBackground: true,
          showChartValues: true,
          showChartValuesInPercentage: false,
          showChartValuesOutside: false,
          // decimalPlaces: 0,
          chartValueBackgroundColor: Colors.transparent),
      // gradientList: ---To add gradient colors---
      // emptyColorGradient: ---Empty Color gradient---
    );
  }
}
