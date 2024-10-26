// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:syncfusion_flutter_charts/charts.dart';

class DoughnutChart extends StatefulWidget {
  const DoughnutChart({
    super.key,
    this.width,
    this.height,
    required this.dataSource,
    this.innerRadius = '70%',
    this.startAngle = 270,
    this.endAngle = 90,
    this.enableTooltip = true,
    this.title = '',
  });

  final double? width;
  final double? height;
  final List<ChartDataSemiDoughnutStruct> dataSource;
  final String innerRadius;
  final int startAngle;
  final int endAngle;
  final bool enableTooltip;
  final String title;

  @override
  State<DoughnutChart> createState() => _DoughnutChartState();
}

class _DoughnutChartState extends State<DoughnutChart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 300,
      child: SfCircularChart(
        title: ChartTitle(text: widget.title),
        legend: Legend(isVisible: true),
        centerY: '60%',
        series: _getSemiDoughnutSeries(),
        tooltipBehavior: TooltipBehavior(enable: widget.enableTooltip),
      ),
    );
  }

  List<DoughnutSeries<ChartDataSemiDoughnutStruct, String>>
      _getSemiDoughnutSeries() {
    return <DoughnutSeries<ChartDataSemiDoughnutStruct, String>>[
      DoughnutSeries<ChartDataSemiDoughnutStruct, String>(
        dataSource: widget.dataSource,
        innerRadius: widget.innerRadius,
        startAngle: widget.startAngle,
        endAngle: widget.endAngle,
        xValueMapper: (ChartDataSemiDoughnutStruct data, _) => data.xx,
        yValueMapper: (ChartDataSemiDoughnutStruct data, _) => data.yy,
        dataLabelMapper: (ChartDataSemiDoughnutStruct data, _) => data.text,
        dataLabelSettings: const DataLabelSettings(
            isVisible: true, labelPosition: ChartDataLabelPosition.outside),
      ),
    ];
  }
}
