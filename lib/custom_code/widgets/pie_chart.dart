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

class PieChart extends StatefulWidget {
  const PieChart({
    super.key,
    this.width,
    this.height,
    required this.dataSource,
    this.startAngle = 00,
    this.endAngle = 360,
    this.enableTooltip = true,
    this.title = '',
  });

  final double? width;
  final double? height;
  final List<ChartDataSemiDoughnutStruct> dataSource;
  final int startAngle;
  final int endAngle;
  final bool enableTooltip;
  final String title;

  @override
  State<PieChart> createState() => _PieChartState();
}

class _PieChartState extends State<PieChart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 300,
      child: SfCircularChart(
        title: ChartTitle(text: widget.title),
        legend:
            Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
        series: _getPieSeries(),
        tooltipBehavior: TooltipBehavior(enable: widget.enableTooltip),
      ),
    );
  }

  List<PieSeries<ChartDataSemiDoughnutStruct, String>> _getPieSeries() {
    return <PieSeries<ChartDataSemiDoughnutStruct, String>>[
      PieSeries<ChartDataSemiDoughnutStruct, String>(
        dataSource: widget.dataSource,
        xValueMapper: (ChartDataSemiDoughnutStruct data, _) => data.xx,
        yValueMapper: (ChartDataSemiDoughnutStruct data, _) => data.yy,
        dataLabelMapper: (ChartDataSemiDoughnutStruct data, _) =>
            data.xx, // Labels from x data
        startAngle: widget.startAngle,
        endAngle: widget.endAngle,
        dataLabelSettings: const DataLabelSettings(
            isVisible: true, labelPosition: ChartDataLabelPosition.outside),
      ),
    ];
  }
}
