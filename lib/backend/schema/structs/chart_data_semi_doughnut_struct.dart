// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ChartDataSemiDoughnutStruct extends FFFirebaseStruct {
  ChartDataSemiDoughnutStruct({
    String? xx,
    double? yy,
    String? text,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _xx = xx,
        _yy = yy,
        _text = text,
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

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  set text(String? val) => _text = val;

  bool hasText() => _text != null;

  static ChartDataSemiDoughnutStruct fromMap(Map<String, dynamic> data) =>
      ChartDataSemiDoughnutStruct(
        xx: data['xx'] as String?,
        yy: castToType<double>(data['yy']),
        text: data['text'] as String?,
      );

  static ChartDataSemiDoughnutStruct? maybeFromMap(dynamic data) => data is Map
      ? ChartDataSemiDoughnutStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'xx': _xx,
        'yy': _yy,
        'text': _text,
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
        'text': serializeParam(
          _text,
          ParamType.String,
        ),
      }.withoutNulls;

  static ChartDataSemiDoughnutStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ChartDataSemiDoughnutStruct(
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
        text: deserializeParam(
          data['text'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ChartDataSemiDoughnutStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChartDataSemiDoughnutStruct &&
        xx == other.xx &&
        yy == other.yy &&
        text == other.text;
  }

  @override
  int get hashCode => const ListEquality().hash([xx, yy, text]);
}

ChartDataSemiDoughnutStruct createChartDataSemiDoughnutStruct({
  String? xx,
  double? yy,
  String? text,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ChartDataSemiDoughnutStruct(
      xx: xx,
      yy: yy,
      text: text,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ChartDataSemiDoughnutStruct? updateChartDataSemiDoughnutStruct(
  ChartDataSemiDoughnutStruct? chartDataSemiDoughnut, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    chartDataSemiDoughnut
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addChartDataSemiDoughnutStructData(
  Map<String, dynamic> firestoreData,
  ChartDataSemiDoughnutStruct? chartDataSemiDoughnut,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (chartDataSemiDoughnut == null) {
    return;
  }
  if (chartDataSemiDoughnut.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      chartDataSemiDoughnut.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final chartDataSemiDoughnutData = getChartDataSemiDoughnutFirestoreData(
      chartDataSemiDoughnut, forFieldValue);
  final nestedData =
      chartDataSemiDoughnutData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      chartDataSemiDoughnut.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getChartDataSemiDoughnutFirestoreData(
  ChartDataSemiDoughnutStruct? chartDataSemiDoughnut, [
  bool forFieldValue = false,
]) {
  if (chartDataSemiDoughnut == null) {
    return {};
  }
  final firestoreData = mapToFirestore(chartDataSemiDoughnut.toMap());

  // Add any Firestore field values
  chartDataSemiDoughnut.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getChartDataSemiDoughnutListFirestoreData(
  List<ChartDataSemiDoughnutStruct>? chartDataSemiDoughnuts,
) =>
    chartDataSemiDoughnuts
        ?.map((e) => getChartDataSemiDoughnutFirestoreData(e, true))
        .toList() ??
    [];
