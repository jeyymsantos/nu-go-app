// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChartSplineStruct extends FFFirebaseStruct {
  ChartSplineStruct({
    String? xAxis,
    double? yFirst,
    double? ySecond,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _xAxis = xAxis,
        _yFirst = yFirst,
        _ySecond = ySecond,
        super(firestoreUtilData);

  // "x_axis" field.
  String? _xAxis;
  String get xAxis => _xAxis ?? '';
  set xAxis(String? val) => _xAxis = val;

  bool hasXAxis() => _xAxis != null;

  // "y_first" field.
  double? _yFirst;
  double get yFirst => _yFirst ?? 0.0;
  set yFirst(double? val) => _yFirst = val;

  void incrementYFirst(double amount) => yFirst = yFirst + amount;

  bool hasYFirst() => _yFirst != null;

  // "y_second" field.
  double? _ySecond;
  double get ySecond => _ySecond ?? 0.0;
  set ySecond(double? val) => _ySecond = val;

  void incrementYSecond(double amount) => ySecond = ySecond + amount;

  bool hasYSecond() => _ySecond != null;

  static ChartSplineStruct fromMap(Map<String, dynamic> data) =>
      ChartSplineStruct(
        xAxis: data['x_axis'] as String?,
        yFirst: castToType<double>(data['y_first']),
        ySecond: castToType<double>(data['y_second']),
      );

  static ChartSplineStruct? maybeFromMap(dynamic data) => data is Map
      ? ChartSplineStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'x_axis': _xAxis,
        'y_first': _yFirst,
        'y_second': _ySecond,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'x_axis': serializeParam(
          _xAxis,
          ParamType.String,
        ),
        'y_first': serializeParam(
          _yFirst,
          ParamType.double,
        ),
        'y_second': serializeParam(
          _ySecond,
          ParamType.double,
        ),
      }.withoutNulls;

  static ChartSplineStruct fromSerializableMap(Map<String, dynamic> data) =>
      ChartSplineStruct(
        xAxis: deserializeParam(
          data['x_axis'],
          ParamType.String,
          false,
        ),
        yFirst: deserializeParam(
          data['y_first'],
          ParamType.double,
          false,
        ),
        ySecond: deserializeParam(
          data['y_second'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ChartSplineStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChartSplineStruct &&
        xAxis == other.xAxis &&
        yFirst == other.yFirst &&
        ySecond == other.ySecond;
  }

  @override
  int get hashCode => const ListEquality().hash([xAxis, yFirst, ySecond]);
}

ChartSplineStruct createChartSplineStruct({
  String? xAxis,
  double? yFirst,
  double? ySecond,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ChartSplineStruct(
      xAxis: xAxis,
      yFirst: yFirst,
      ySecond: ySecond,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ChartSplineStruct? updateChartSplineStruct(
  ChartSplineStruct? chartSpline, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    chartSpline
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addChartSplineStructData(
  Map<String, dynamic> firestoreData,
  ChartSplineStruct? chartSpline,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (chartSpline == null) {
    return;
  }
  if (chartSpline.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && chartSpline.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final chartSplineData =
      getChartSplineFirestoreData(chartSpline, forFieldValue);
  final nestedData =
      chartSplineData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = chartSpline.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getChartSplineFirestoreData(
  ChartSplineStruct? chartSpline, [
  bool forFieldValue = false,
]) {
  if (chartSpline == null) {
    return {};
  }
  final firestoreData = mapToFirestore(chartSpline.toMap());

  // Add any Firestore field values
  chartSpline.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getChartSplineListFirestoreData(
  List<ChartSplineStruct>? chartSplines,
) =>
    chartSplines?.map((e) => getChartSplineFirestoreData(e, true)).toList() ??
    [];
