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

class CircularBar extends StatefulWidget {
  const CircularBar({
    super.key,
    this.width,
    this.height,
    required this.dataSource,
    required this.title,
    this.legendPosition = LegendPosition.auto, // Optional legend position
  });

  final double? width;
  final double? height;
  final List<ChartDataCircularBarStruct> dataSource;
  final String title;
  final LegendPosition legendPosition; // Optional legend position with default

  @override
  State<CircularBar> createState() => _CircularBarState();
}

class _CircularBarState extends State<CircularBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 300,
      child: SfCircularChart(
        title: ChartTitle(text: widget.title), // Dynamic title
        legend: Legend(
          isVisible: true,
          position: widget.legendPosition,
          overflowMode: LegendItemOverflowMode.wrap,
        ),
        series: _getDoughnutSeries(),
        tooltipBehavior: TooltipBehavior(enable: true),
      ),
    );
  }

  /// Method to get the Doughnut Series with dynamic data
  List<DoughnutSeries<ChartDataCircularBarStruct, String>>
      _getDoughnutSeries() {
    return <DoughnutSeries<ChartDataCircularBarStruct, String>>[
      DoughnutSeries<ChartDataCircularBarStruct, String>(
        dataSource: widget.dataSource,
        xValueMapper: (ChartDataCircularBarStruct data, _) => data.xx as String,
        yValueMapper: (ChartDataCircularBarStruct data, _) => data.yy,
        startAngle: 90,
        endAngle: 90,
        dataLabelSettings: const DataLabelSettings(
          isVisible: true,
          labelPosition: ChartDataLabelPosition.outside,
        ),
      ),
    ];
  }
}
