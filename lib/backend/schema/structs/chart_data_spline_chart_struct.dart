// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChartDataSplineChartStruct extends FFFirebaseStruct {
  ChartDataSplineChartStruct({
    String? xx,
    double? yy,
    double? secondSeriesValue,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _xx = xx,
        _yy = yy,
        _secondSeriesValue = secondSeriesValue,
        super(firestoreUtilData);

  // "xx" field.
  String? _xx;
  String get xx => _xx ?? '';
  set xx(String? val) => _xx = val;

  bool hasXx() => _xx != null;

  // "yy" field.
  double? _yy;
  double get yy => _yy ?? 0.0;
  set yy(double? val) => _yy = val;

  void incrementYy(double amount) => yy = yy + amount;

  bool hasYy() => _yy != null;

  // "secondSeriesValue" field.
  double? _secondSeriesValue;
  double get secondSeriesValue => _secondSeriesValue ?? 0.0;
  set secondSeriesValue(double? val) => _secondSeriesValue = val;

  void incrementSecondSeriesValue(double amount) =>
      secondSeriesValue = secondSeriesValue + amount;

  bool hasSecondSeriesValue() => _secondSeriesValue != null;

  static ChartDataSplineChartStruct fromMap(Map<String, dynamic> data) =>
      ChartDataSplineChartStruct(
        xx: data['xx'] as String?,
        yy: castToType<double>(data['yy']),
        secondSeriesValue: castToType<double>(data['secondSeriesValue']),
      );

  static ChartDataSplineChartStruct? maybeFromMap(dynamic data) => data is Map
      ? ChartDataSplineChartStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'xx': _xx,
        'yy': _yy,
        'secondSeriesValue': _secondSeriesValue,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'xx': serializeParam(
          _xx,
          ParamType.String,
        ),
        'yy': serializeParam(
          _yy,
          ParamType.double,
        ),
        'secondSeriesValue': serializeParam(
          _secondSeriesValue,
          ParamType.double,
        ),
      }.withoutNulls;

  static ChartDataSplineChartStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ChartDataSplineChartStruct(
        xx: deserializeParam(
          data['xx'],
          ParamType.String,
          false,
        ),
        yy: deserializeParam(
          data['yy'],
          ParamType.double,
          false,
        ),
        secondSeriesValue: deserializeParam(
          data['secondSeriesValue'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ChartDataSplineChartStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChartDataSplineChartStruct &&
        xx == other.xx &&
        yy == other.yy &&
        secondSeriesValue == other.secondSeriesValue;
  }

  @override
  int get hashCode => const ListEquality().hash([xx, yy, secondSeriesValue]);
}

ChartDataSplineChartStruct createChartDataSplineChartStruct({
  String? xx,
  double? yy,
  double? secondSeriesValue,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ChartDataSplineChartStruct(
      xx: xx,
      yy: yy,
      secondSeriesValue: secondSeriesValue,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ChartDataSplineChartStruct? updateChartDataSplineChartStruct(
  ChartDataSplineChartStruct? chartDataSplineChart, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    chartDataSplineChart
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addChartDataSplineChartStructData(
  Map<String, dynamic> firestoreData,
  ChartDataSplineChartStruct? chartDataSplineChart,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (chartDataSplineChart == null) {
    return;
  }
  if (chartDataSplineChart.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && chartDataSplineChart.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final chartDataSplineChartData =
      getChartDataSplineChartFirestoreData(chartDataSplineChart, forFieldValue);
  final nestedData =
      chartDataSplineChartData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      chartDataSplineChart.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getChartDataSplineChartFirestoreData(
  ChartDataSplineChartStruct? chartDataSplineChart, [
  bool forFieldValue = false,
]) {
  if (chartDataSplineChart == null) {
    return {};
  }
  final firestoreData = mapToFirestore(chartDataSplineChart.toMap());

  // Add any Firestore field values
  chartDataSplineChart.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getChartDataSplineChartListFirestoreData(
  List<ChartDataSplineChartStruct>? chartDataSplineCharts,
) =>
    chartDataSplineCharts
        ?.map((e) => getChartDataSplineChartFirestoreData(e, true))
        .toList() ??
    [];
