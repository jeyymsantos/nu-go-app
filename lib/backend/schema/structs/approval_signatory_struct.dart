// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ApprovalSignatoryStruct extends FFFirebaseStruct {
  ApprovalSignatoryStruct({
    String? note,
    DocumentReference? approvalUser,
    DocumentReference? approvalOffice,
    String? approvalRole,
    String? approvalStatus,
    DateTime? approvalTimestamp,
    String? approvalFeedback,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _note = note,
        _approvalUser = approvalUser,
        _approvalOffice = approvalOffice,
        _approvalRole = approvalRole,
        _approvalStatus = approvalStatus,
        _approvalTimestamp = approvalTimestamp,
        _approvalFeedback = approvalFeedback,
        super(firestoreUtilData);

  // "note" field.
  String? _note;
  String get note => _note ?? '';
  set note(String? val) => _note = val;

  bool hasNote() => _note != null;

  // "approval_user" field.
  DocumentReference? _approvalUser;
  DocumentReference? get approvalUser => _approvalUser;
  set approvalUser(DocumentReference? val) => _approvalUser = val;

  bool hasApprovalUser() => _approvalUser != null;

  // "approval_office" field.
  DocumentReference? _approvalOffice;
  DocumentReference? get approvalOffice => _approvalOffice;
  set approvalOffice(DocumentReference? val) => _approvalOffice = val;

  bool hasApprovalOffice() => _approvalOffice != null;

  // "approval_role" field.
  String? _approvalRole;
  String get approvalRole => _approvalRole ?? '';
  set approvalRole(String? val) => _approvalRole = val;

  bool hasApprovalRole() => _approvalRole != null;

  // "approval_status" field.
  String? _approvalStatus;
  String get approvalStatus => _approvalStatus ?? '';
  set approvalStatus(String? val) => _approvalStatus = val;

  bool hasApprovalStatus() => _approvalStatus != null;

  // "approval_timestamp" field.
  DateTime? _approvalTimestamp;
  DateTime? get approvalTimestamp => _approvalTimestamp;
  set approvalTimestamp(DateTime? val) => _approvalTimestamp = val;

  bool hasApprovalTimestamp() => _approvalTimestamp != null;

  // "approval_feedback" field.
  String? _approvalFeedback;
  String get approvalFeedback => _approvalFeedback ?? '';
  set approvalFeedback(String? val) => _approvalFeedback = val;

  bool hasApprovalFeedback() => _approvalFeedback != null;

  static ApprovalSignatoryStruct fromMap(Map<String, dynamic> data) =>
      ApprovalSignatoryStruct(
        note: data['note'] as String?,
        approvalUser: data['approval_user'] as DocumentReference?,
        approvalOffice: data['approval_office'] as DocumentReference?,
        approvalRole: data['approval_role'] as String?,
        approvalStatus: data['approval_status'] as String?,
        approvalTimestamp: data['approval_timestamp'] as DateTime?,
        approvalFeedback: data['approval_feedback'] as String?,
      );

  static ApprovalSignatoryStruct? maybeFromMap(dynamic data) => data is Map
      ? ApprovalSignatoryStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'note': _note,
        'approval_user': _approvalUser,
        'approval_office': _approvalOffice,
        'approval_role': _approvalRole,
        'approval_status': _approvalStatus,
        'approval_timestamp': _approvalTimestamp,
        'approval_feedback': _approvalFeedback,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'note': serializeParam(
          _note,
          ParamType.String,
        ),
        'approval_user': serializeParam(
          _approvalUser,
          ParamType.DocumentReference,
        ),
        'approval_office': serializeParam(
          _approvalOffice,
          ParamType.DocumentReference,
        ),
        'approval_role': serializeParam(
          _approvalRole,
          ParamType.String,
        ),
        'approval_status': serializeParam(
          _approvalStatus,
          ParamType.String,
        ),
        'approval_timestamp': serializeParam(
          _approvalTimestamp,
          ParamType.DateTime,
        ),
        'approval_feedback': serializeParam(
          _approvalFeedback,
          ParamType.String,
        ),
      }.withoutNulls;

  static ApprovalSignatoryStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ApprovalSignatoryStruct(
        note: deserializeParam(
          data['note'],
          ParamType.String,
          false,
        ),
        approvalUser: deserializeParam(
          data['approval_user'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        approvalOffice: deserializeParam(
          data['approval_office'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['office'],
        ),
        approvalRole: deserializeParam(
          data['approval_role'],
          ParamType.String,
          false,
        ),
        approvalStatus: deserializeParam(
          data['approval_status'],
          ParamType.String,
          false,
        ),
        approvalTimestamp: deserializeParam(
          data['approval_timestamp'],
          ParamType.DateTime,
          false,
        ),
        approvalFeedback: deserializeParam(
          data['approval_feedback'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ApprovalSignatoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ApprovalSignatoryStruct &&
        note == other.note &&
        approvalUser == other.approvalUser &&
        approvalOffice == other.approvalOffice &&
        approvalRole == other.approvalRole &&
        approvalStatus == other.approvalStatus &&
        approvalTimestamp == other.approvalTimestamp &&
        approvalFeedback == other.approvalFeedback;
  }

  @override
  int get hashCode => const ListEquality().hash([
        note,
        approvalUser,
        approvalOffice,
        approvalRole,
        approvalStatus,
        approvalTimestamp,
        approvalFeedback
      ]);
}

ApprovalSignatoryStruct createApprovalSignatoryStruct({
  String? note,
  DocumentReference? approvalUser,
  DocumentReference? approvalOffice,
  String? approvalRole,
  String? approvalStatus,
  DateTime? approvalTimestamp,
  String? approvalFeedback,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ApprovalSignatoryStruct(
      note: note,
      approvalUser: approvalUser,
      approvalOffice: approvalOffice,
      approvalRole: approvalRole,
      approvalStatus: approvalStatus,
      approvalTimestamp: approvalTimestamp,
      approvalFeedback: approvalFeedback,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ApprovalSignatoryStruct? updateApprovalSignatoryStruct(
  ApprovalSignatoryStruct? approvalSignatory, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    approvalSignatory
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addApprovalSignatoryStructData(
  Map<String, dynamic> firestoreData,
  ApprovalSignatoryStruct? approvalSignatory,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (approvalSignatory == null) {
    return;
  }
  if (approvalSignatory.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && approvalSignatory.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final approvalSignatoryData =
      getApprovalSignatoryFirestoreData(approvalSignatory, forFieldValue);
  final nestedData =
      approvalSignatoryData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = approvalSignatory.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getApprovalSignatoryFirestoreData(
  ApprovalSignatoryStruct? approvalSignatory, [
  bool forFieldValue = false,
]) {
  if (approvalSignatory == null) {
    return {};
  }
  final firestoreData = mapToFirestore(approvalSignatory.toMap());

  // Add any Firestore field values
  approvalSignatory.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getApprovalSignatoryListFirestoreData(
  List<ApprovalSignatoryStruct>? approvalSignatorys,
) =>
    approvalSignatorys
        ?.map((e) => getApprovalSignatoryFirestoreData(e, true))
        .toList() ??
    [];
