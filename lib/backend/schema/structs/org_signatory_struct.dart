// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrgSignatoryStruct extends FFFirebaseStruct {
  OrgSignatoryStruct({
    String? level,
    DocumentReference? approver,
    DateTime? datetime,
    String? status,
    String? feedback,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _level = level,
        _approver = approver,
        _datetime = datetime,
        _status = status,
        _feedback = feedback,
        super(firestoreUtilData);

  // "level" field.
  String? _level;
  String get level => _level ?? '';
  set level(String? val) => _level = val;

  bool hasLevel() => _level != null;

  // "approver" field.
  DocumentReference? _approver;
  DocumentReference? get approver => _approver;
  set approver(DocumentReference? val) => _approver = val;

  bool hasApprover() => _approver != null;

  // "datetime" field.
  DateTime? _datetime;
  DateTime? get datetime => _datetime;
  set datetime(DateTime? val) => _datetime = val;

  bool hasDatetime() => _datetime != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "feedback" field.
  String? _feedback;
  String get feedback => _feedback ?? '';
  set feedback(String? val) => _feedback = val;

  bool hasFeedback() => _feedback != null;

  static OrgSignatoryStruct fromMap(Map<String, dynamic> data) =>
      OrgSignatoryStruct(
        level: data['level'] as String?,
        approver: data['approver'] as DocumentReference?,
        datetime: data['datetime'] as DateTime?,
        status: data['status'] as String?,
        feedback: data['feedback'] as String?,
      );

  static OrgSignatoryStruct? maybeFromMap(dynamic data) => data is Map
      ? OrgSignatoryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'level': _level,
        'approver': _approver,
        'datetime': _datetime,
        'status': _status,
        'feedback': _feedback,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'level': serializeParam(
          _level,
          ParamType.String,
        ),
        'approver': serializeParam(
          _approver,
          ParamType.DocumentReference,
        ),
        'datetime': serializeParam(
          _datetime,
          ParamType.DateTime,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'feedback': serializeParam(
          _feedback,
          ParamType.String,
        ),
      }.withoutNulls;

  static OrgSignatoryStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrgSignatoryStruct(
        level: deserializeParam(
          data['level'],
          ParamType.String,
          false,
        ),
        approver: deserializeParam(
          data['approver'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        datetime: deserializeParam(
          data['datetime'],
          ParamType.DateTime,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        feedback: deserializeParam(
          data['feedback'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OrgSignatoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrgSignatoryStruct &&
        level == other.level &&
        approver == other.approver &&
        datetime == other.datetime &&
        status == other.status &&
        feedback == other.feedback;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([level, approver, datetime, status, feedback]);
}

OrgSignatoryStruct createOrgSignatoryStruct({
  String? level,
  DocumentReference? approver,
  DateTime? datetime,
  String? status,
  String? feedback,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OrgSignatoryStruct(
      level: level,
      approver: approver,
      datetime: datetime,
      status: status,
      feedback: feedback,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OrgSignatoryStruct? updateOrgSignatoryStruct(
  OrgSignatoryStruct? orgSignatory, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    orgSignatory
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOrgSignatoryStructData(
  Map<String, dynamic> firestoreData,
  OrgSignatoryStruct? orgSignatory,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (orgSignatory == null) {
    return;
  }
  if (orgSignatory.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && orgSignatory.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final orgSignatoryData =
      getOrgSignatoryFirestoreData(orgSignatory, forFieldValue);
  final nestedData =
      orgSignatoryData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = orgSignatory.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOrgSignatoryFirestoreData(
  OrgSignatoryStruct? orgSignatory, [
  bool forFieldValue = false,
]) {
  if (orgSignatory == null) {
    return {};
  }
  final firestoreData = mapToFirestore(orgSignatory.toMap());

  // Add any Firestore field values
  orgSignatory.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOrgSignatoryListFirestoreData(
  List<OrgSignatoryStruct>? orgSignatorys,
) =>
    orgSignatorys?.map((e) => getOrgSignatoryFirestoreData(e, true)).toList() ??
    [];
