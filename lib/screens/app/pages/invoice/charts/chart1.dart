// ignore_for_file: must_be_immutable

import 'package:fluent_ui/fluent_ui.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SalesData {
  SalesData(this.year, this.sales);
  final String year;
  final double sales;
}

class Chart1 extends StatelessWidget {
  Chart1({
    Key? key,
    required this.month1,
    required this.month2,
    this.month3 = "",
    this.month4 = "",
    required this.monthSales1,
    required this.monthSales2,
    this.monthSales3 = 0,
    this.monthSales4 = 0,
  }) : super(key: key);
  String month1;
  String month2;
  String month3;
  String month4;

  double monthSales1;
  double monthSales2;
  double monthSales3;
  double monthSales4;

  @override
  Widget build(BuildContext context) {
    List<SalesData> salesData = [
      SalesData(month1, monthSales1),
      SalesData(month2, monthSales2),
      SalesData(month3, monthSales3),
      SalesData(month4, monthSales4),
    ];
    monthSales4 == 0 ? salesData.remove(salesData[3]) : null;
    monthSales3 == 0 ? salesData.remove(salesData[2]) : null;

    return SfCartesianChart(
        // Initialize category axis

        primaryXAxis: CategoryAxis(),
        series: <LineSeries<SalesData, String>>[
          LineSeries<SalesData, String>(
              // Bind data source
              dataSource: salesData,
              xValueMapper: (SalesData sales, _) => sales.year,
              yValueMapper: (SalesData sales, _) => sales.sales)
        ]);
  }
}
