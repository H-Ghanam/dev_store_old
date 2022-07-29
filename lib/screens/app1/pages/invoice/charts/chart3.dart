// ignore_for_file: library_private_types_in_public_api, must_be_immutable

import 'package:fluent_ui/fluent_ui.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}

class Chart3 extends StatelessWidget {
  Chart3({Key? key}) : super(key: key);

  List<_ChartData> data = [
    _ChartData('مايو', 20000),
    _ChartData('يناير', 12000),
    _ChartData('سبتمبر', 23000),
    _ChartData('اكتوبر', 16000),
    _ChartData('مارس', 24500)
  ];
  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        // primaryYAxis: NumericAxis(minimum: 0, maximum: 40, interval: 10),
        tooltipBehavior: TooltipBehavior(enable: true),
        series: <ChartSeries<_ChartData, String>>[
          ColumnSeries<_ChartData, String>(
              dataSource: data,
              xValueMapper: (_ChartData data, _) => data.x,
              yValueMapper: (_ChartData data, _) => data.y,
              name: 'أرباح',
              color: Color.fromARGB(255, 6, 74, 129))
        ]);
  }
}
