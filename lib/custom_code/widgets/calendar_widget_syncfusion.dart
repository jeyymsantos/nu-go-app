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

import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalendarWidgetSyncfusion extends StatefulWidget {
  const CalendarWidgetSyncfusion({
    super.key,
    this.width,
    this.height,
    required this.dataSource,
  });

  final double? width;
  final double? height;
  final List<CalendarStruct> dataSource;

  @override
  State<CalendarWidgetSyncfusion> createState() =>
      _CalendarWidgetSyncfusionState();
}

class _CalendarWidgetSyncfusionState extends State<CalendarWidgetSyncfusion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SfCalendar(
      dataSource: MeetingDataSource(widget.dataSource),
      view: CalendarView.month,
      monthViewSettings:
          MonthViewSettings(showAgenda: true, appointmentDisplayCount: 2),
    ));
  }
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<CalendarStruct> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].from;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].to;
  }

  @override
  String getSubject(int index) {
    return appointments![index].eventName;
  }

  @override
  Color getColor(int index) {
    return appointments![index].background;
  }

  @override
  bool isAllDay(int index) {
    return appointments![index].isAllDay;
  }
}
