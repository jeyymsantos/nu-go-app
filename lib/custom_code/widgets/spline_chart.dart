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

class SplineChart extends StatefulWidget {
  const SplineChart({
    super.key,
    this.width,
    this.height,
    required this.dataSource,
    required this.title,
  });

  final double? width;
  final double? height;
  final List<ChartDataSplineChartStruct> dataSource;
  final String title;

  @override
  State<SplineChart> createState() => _SplineChartState();
}

class _SplineChartState extends State<SplineChart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 300,
      child: SfCartesianChart(
        plotAreaBorderWidth: 0,
        title: ChartTitle(text: widget.title),
        legend: Legend(isVisible: true),
        primaryXAxis: CategoryAxis(
          majorGridLines: MajorGridLines(width: 0),
          labelPlacement: LabelPlacement.onTicks,
        ),
        primaryYAxis: NumericAxis(
          axisLine: AxisLine(width: 0),
          edgeLabelPlacement: EdgeLabelPlacement.shift,
          labelFormat: '{value}',
          majorTickLines: MajorTickLines(size: 0),
        ),
        series: _getSplineSeries(),
        tooltipBehavior: TooltipBehavior(enable: true),
      ),
    );
  }

  List<SplineSeries<ChartDataSplineChartStruct, String>> _getSplineSeries() {
    return <SplineSeries<ChartDataSplineChartStruct, String>>[
      SplineSeries<ChartDataSplineChartStruct, String>(
        dataSource: widget.dataSource,
        xValueMapper: (ChartDataSplineChartStruct data, _) => data.xx as String,
        yValueMapper: (ChartDataSplineChartStruct data, _) => data.yy,
        markerSettings: const MarkerSettings(isVisible: true),
        name: 'High',
      ),
      SplineSeries<ChartDataSplineChartStruct, String>(
        dataSource: widget.dataSource,
        xValueMapper: (ChartDataSplineChartStruct data, _) => data.xx as String,
        yValueMapper: (ChartDataSplineChartStruct data, _) =>
            data.secondSeriesValue,
        markerSettings: const MarkerSettings(isVisible: true),
        name: 'Low',
      ),
    ];
  }
}
