// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReportOrgThenCountStruct extends FFFirebaseStruct {
  ReportOrgThenCountStruct({
    DocumentReference? orgRef,
    int? count,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _orgRef = orgRef,
        _count = count,
        super(firestoreUtilData);

  // "orgRef" field.
  DocumentReference? _orgRef;
  DocumentReference? get orgRef => _orgRef;
  set orgRef(DocumentReference? val) => _orgRef = val;

  bool hasOrgRef() => _orgRef != null;

  // "count" field.
  int? _count;
  int get count => _count ?? 0;
  set count(int? val) => _count = val;

  void incrementCount(int amount) => count = count + amount;

  bool hasCount() => _count != null;

  static ReportOrgThenCountStruct fromMap(Map<String, dynamic> data) =>
      ReportOrgThenCountStruct(
        orgRef: data['orgRef'] as DocumentReference?,
        count: castToType<int>(data['count']),
      );

  static ReportOrgThenCountStruct? maybeFromMap(dynamic data) => data is Map
      ? ReportOrgThenCountStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'orgRef': _orgRef,
        'count': _count,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'orgRef': serializeParam(
          _orgRef,
          ParamType.DocumentReference,
        ),
        'count': serializeParam(
          _count,
          ParamType.int,
        ),
      }.withoutNulls;

  static ReportOrgThenCountStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ReportOrgThenCountStruct(
        orgRef: deserializeParam(
          data['orgRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['organizations'],
        ),
        count: deserializeParam(
          data['count'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ReportOrgThenCountStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReportOrgThenCountStruct &&
        orgRef == other.orgRef &&
        count == other.count;
  }

  @override
  int get hashCode => const ListEquality().hash([orgRef, count]);
}

ReportOrgThenCountStruct createReportOrgThenCountStruct({
  DocumentReference? orgRef,
  int? count,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ReportOrgThenCountStruct(
      orgRef: orgRef,
      count: count,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ReportOrgThenCountStruct? updateReportOrgThenCountStruct(
  ReportOrgThenCountStruct? reportOrgThenCount, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    reportOrgThenCount
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addReportOrgThenCountStructData(
  Map<String, dynamic> firestoreData,
  ReportOrgThenCountStruct? reportOrgThenCount,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (reportOrgThenCount == null) {
    return;
  }
  if (reportOrgThenCount.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && reportOrgThenCount.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final reportOrgThenCountData =
      getReportOrgThenCountFirestoreData(reportOrgThenCount, forFieldValue);
  final nestedData =
      reportOrgThenCountData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      reportOrgThenCount.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getReportOrgThenCountFirestoreData(
  ReportOrgThenCountStruct? reportOrgThenCount, [
  bool forFieldValue = false,
]) {
  if (reportOrgThenCount == null) {
    return {};
  }
  final firestoreData = mapToFirestore(reportOrgThenCount.toMap());

  // Add any Firestore field values
  reportOrgThenCount.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getReportOrgThenCountListFirestoreData(
  List<ReportOrgThenCountStruct>? reportOrgThenCounts,
) =>
    reportOrgThenCounts
        ?.map((e) => getReportOrgThenCountFirestoreData(e, true))
        .toList() ??
    [];
