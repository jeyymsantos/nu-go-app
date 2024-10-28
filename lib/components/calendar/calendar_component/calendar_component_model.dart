import '/components/calendar/day_label_component/day_label_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'calendar_component_widget.dart' show CalendarComponentWidget;
import 'package:flutter/material.dart';

class CalendarComponentModel extends FlutterFlowModel<CalendarComponentWidget> {
  ///  Local state fields for this component.

  DateTime? selectedDate;

  DateTime? inputDate;

  ///  State fields for stateful widgets in this component.

  // Model for DayLabelComponent component.
  late DayLabelComponentModel dayLabelComponentModel1;
  // Model for DayLabelComponent component.
  late DayLabelComponentModel dayLabelComponentModel2;
  // Model for DayLabelComponent component.
  late DayLabelComponentModel dayLabelComponentModel3;
  // Model for DayLabelComponent component.
  late DayLabelComponentModel dayLabelComponentModel4;
  // Model for DayLabelComponent component.
  late DayLabelComponentModel dayLabelComponentModel5;
  // Model for DayLabelComponent component.
  late DayLabelComponentModel dayLabelComponentModel6;
  // Model for DayLabelComponent component.
  late DayLabelComponentModel dayLabelComponentModel7;

  @override
  void initState(BuildContext context) {
    dayLabelComponentModel1 =
        createModel(context, () => DayLabelComponentModel());
    dayLabelComponentModel2 =
        createModel(context, () => DayLabelComponentModel());
    dayLabelComponentModel3 =
        createModel(context, () => DayLabelComponentModel());
    dayLabelComponentModel4 =
        createModel(context, () => DayLabelComponentModel());
    dayLabelComponentModel5 =
        createModel(context, () => DayLabelComponentModel());
    dayLabelComponentModel6 =
        createModel(context, () => DayLabelComponentModel());
    dayLabelComponentModel7 =
        createModel(context, () => DayLabelComponentModel());
  }

  @override
  void dispose() {
    dayLabelComponentModel1.dispose();
    dayLabelComponentModel2.dispose();
    dayLabelComponentModel3.dispose();
    dayLabelComponentModel4.dispose();
    dayLabelComponentModel5.dispose();
    dayLabelComponentModel6.dispose();
    dayLabelComponentModel7.dispose();
  }
}
