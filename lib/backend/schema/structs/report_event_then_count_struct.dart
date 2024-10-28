// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportEventThenCountStruct extends FFFirebaseStruct {
  ReportEventThenCountStruct({
    DocumentReference? eventRef,
    int? count,
    double? average,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _eventRef = eventRef,
        _count = count,
        _average = average,
        super(firestoreUtilData);

  // "eventRef" field.
  DocumentReference? _eventRef;
  DocumentReference? get eventRef => _eventRef;
  set eventRef(DocumentReference? val) => _eventRef = val;

  bool hasEventRef() => _eventRef != null;

  // "count" field.
  int? _count;
  int get count => _count ?? 0;
  set count(int? val) => _count = val;

  void incrementCount(int amount) => count = count + amount;

  bool hasCount() => _count != null;

  // "average" field.
  double? _average;
  double get average => _average ?? 0.0;
  set average(double? val) => _average = val;

  void incrementAverage(double amount) => average = average + amount;

  bool hasAverage() => _average != null;

  static ReportEventThenCountStruct fromMap(Map<String, dynamic> data) =>
      ReportEventThenCountStruct(
        eventRef: data['eventRef'] as DocumentReference?,
        count: castToType<int>(data['count']),
        average: castToType<double>(data['average']),
      );

  static ReportEventThenCountStruct? maybeFromMap(dynamic data) => data is Map
      ? ReportEventThenCountStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'eventRef': _eventRef,
        'count': _count,
        'average': _average,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'eventRef': serializeParam(
          _eventRef,
          ParamType.DocumentReference,
        ),
        'count': serializeParam(
          _count,
          ParamType.int,
        ),
        'average': serializeParam(
          _average,
          ParamType.double,
        ),
      }.withoutNulls;

  static ReportEventThenCountStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ReportEventThenCountStruct(
        eventRef: deserializeParam(
          data['eventRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['events'],
        ),
        count: deserializeParam(
          data['count'],
          ParamType.int,
          false,
        ),
        average: deserializeParam(
          data['average'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ReportEventThenCountStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReportEventThenCountStruct &&
        eventRef == other.eventRef &&
        count == other.count &&
        average == other.average;
  }

  @override
  int get hashCode => const ListEquality().hash([eventRef, count, average]);
}

ReportEventThenCountStruct createReportEventThenCountStruct({
  DocumentReference? eventRef,
  int? count,
  double? average,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ReportEventThenCountStruct(
      eventRef: eventRef,
      count: count,
      average: average,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ReportEventThenCountStruct? updateReportEventThenCountStruct(
  ReportEventThenCountStruct? reportEventThenCount, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    reportEventThenCount
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addReportEventThenCountStructData(
  Map<String, dynamic> firestoreData,
  ReportEventThenCountStruct? reportEventThenCount,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (reportEventThenCount == null) {
    return;
  }
  if (reportEventThenCount.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && reportEventThenCount.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final reportEventThenCountData =
      getReportEventThenCountFirestoreData(reportEventThenCount, forFieldValue);
  final nestedData =
      reportEventThenCountData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      reportEventThenCount.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getReportEventThenCountFirestoreData(
  ReportEventThenCountStruct? reportEventThenCount, [
  bool forFieldValue = false,
]) {
  if (reportEventThenCount == null) {
    return {};
  }
  final firestoreData = mapToFirestore(reportEventThenCount.toMap());

  // Add any Firestore field values
  reportEventThenCount.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getReportEventThenCountListFirestoreData(
  List<ReportEventThenCountStruct>? reportEventThenCounts,
) =>
    reportEventThenCounts
        ?.map((e) => getReportEventThenCountFirestoreData(e, true))
        .toList() ??
    [];
