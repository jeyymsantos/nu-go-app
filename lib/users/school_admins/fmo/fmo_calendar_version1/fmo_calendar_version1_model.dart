import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'fmo_calendar_version1_widget.dart' show FmoCalendarVersion1Widget;
import 'package:flutter/material.dart';

class FmoCalendarVersion1Model
    extends FlutterFlowModel<FmoCalendarVersion1Widget> {
  ///  Local state fields for this page.

  List<ChartDataStruct> chartData = [];
  void addToChartData(ChartDataStruct item) => chartData.add(item);
  void removeFromChartData(ChartDataStruct item) => chartData.remove(item);
  void removeAtIndexFromChartData(int index) => chartData.removeAt(index);
  void insertAtIndexInChartData(int index, ChartDataStruct item) =>
      chartData.insert(index, item);
  void updateChartDataAtIndex(int index, Function(ChartDataStruct) updateFn) =>
      chartData[index] = updateFn(chartData[index]);

  ///  State fields for stateful widgets in this page.

  // Model for TitleHeaderComponent component.
  late TitleHeaderComponentModel titleHeaderComponentModel;

  @override
  void initState(BuildContext context) {
    titleHeaderComponentModel =
        createModel(context, () => TitleHeaderComponentModel());
  }

  @override
  void dispose() {
    titleHeaderComponentModel.dispose();
  }
}
