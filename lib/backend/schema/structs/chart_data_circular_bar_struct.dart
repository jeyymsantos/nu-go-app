// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChartDataCircularBarStruct extends FFFirebaseStruct {
  ChartDataCircularBarStruct({
    String? xx,
    double? yy,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _xx = xx,
        _yy = yy,
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

  static ChartDataCircularBarStruct fromMap(Map<String, dynamic> data) =>
      ChartDataCircularBarStruct(
        xx: data['xx'] as String?,
        yy: castToType<double>(data['yy']),
      );

  static ChartDataCircularBarStruct? maybeFromMap(dynamic data) => data is Map
      ? ChartDataCircularBarStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'xx': _xx,
        'yy': _yy,
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
      }.withoutNulls;

  static ChartDataCircularBarStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ChartDataCircularBarStruct(
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
      );

  @override
  String toString() => 'ChartDataCircularBarStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ChartDataCircularBarStruct &&
        xx == other.xx &&
        yy == other.yy;
  }

  @override
  int get hashCode => const ListEquality().hash([xx, yy]);
}

ChartDataCircularBarStruct createChartDataCircularBarStruct({
  String? xx,
  double? yy,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ChartDataCircularBarStruct(
      xx: xx,
      yy: yy,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ChartDataCircularBarStruct? updateChartDataCircularBarStruct(
  ChartDataCircularBarStruct? chartDataCircularBar, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    chartDataCircularBar
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addChartDataCircularBarStructData(
  Map<String, dynamic> firestoreData,
  ChartDataCircularBarStruct? chartDataCircularBar,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (chartDataCircularBar == null) {
    return;
  }
  if (chartDataCircularBar.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && chartDataCircularBar.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final chartDataCircularBarData =
      getChartDataCircularBarFirestoreData(chartDataCircularBar, forFieldValue);
  final nestedData =
      chartDataCircularBarData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      chartDataCircularBar.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getChartDataCircularBarFirestoreData(
  ChartDataCircularBarStruct? chartDataCircularBar, [
  bool forFieldValue = false,
]) {
  if (chartDataCircularBar == null) {
    return {};
  }
  final firestoreData = mapToFirestore(chartDataCircularBar.toMap());

  // Add any Firestore field values
  chartDataCircularBar.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getChartDataCircularBarListFirestoreData(
  List<ChartDataCircularBarStruct>? chartDataCircularBars,
) =>
    chartDataCircularBars
        ?.map((e) => getChartDataCircularBarFirestoreData(e, true))
        .toList() ??
    [];
