// ignore_for_file: file_names

import 'package:fluent_ui/fluent_ui.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class Charts2 extends StatelessWidget {
  const Charts2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfSparkLineChart(
      trackball: const SparkChartTrackball(
          activationMode: SparkChartActivationMode.tap),
      //Enable marker
      marker:
          const SparkChartMarker(displayMode: SparkChartMarkerDisplayMode.all),
      //Enable data label

      labelDisplayMode: SparkChartLabelDisplayMode.all,

      data: const <double>[0, 1, -3, 2, 10, 3, -2, 0, 2],
    );
  }
}
