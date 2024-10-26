// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ApprovalSetStruct extends FFFirebaseStruct {
  ApprovalSetStruct({
    DocumentReference? organization,
    DocumentReference? event,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _organization = organization,
        _event = event,
        super(firestoreUtilData);

  // "organization" field.
  DocumentReference? _organization;
  DocumentReference? get organization => _organization;
  set organization(DocumentReference? val) => _organization = val;

  bool hasOrganization() => _organization != null;

  // "event" field.
  DocumentReference? _event;
  DocumentReference? get event => _event;
  set event(DocumentReference? val) => _event = val;

  bool hasEvent() => _event != null;

  static ApprovalSetStruct fromMap(Map<String, dynamic> data) =>
      ApprovalSetStruct(
        organization: data['organization'] as DocumentReference?,
        event: data['event'] as DocumentReference?,
      );

  static ApprovalSetStruct? maybeFromMap(dynamic data) => data is Map
      ? ApprovalSetStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'organization': _organization,
        'event': _event,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'organization': serializeParam(
          _organization,
          ParamType.DocumentReference,
        ),
        'event': serializeParam(
          _event,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static ApprovalSetStruct fromSerializableMap(Map<String, dynamic> data) =>
      ApprovalSetStruct(
        organization: deserializeParam(
          data['organization'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['approval_sets'],
        ),
        event: deserializeParam(
          data['event'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['approval_sets'],
        ),
      );

  @override
  String toString() => 'ApprovalSetStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ApprovalSetStruct &&
        organization == other.organization &&
        event == other.event;
  }

  @override
  int get hashCode => const ListEquality().hash([organization, event]);
}

ApprovalSetStruct createApprovalSetStruct({
  DocumentReference? organization,
  DocumentReference? event,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ApprovalSetStruct(
      organization: organization,
      event: event,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ApprovalSetStruct? updateApprovalSetStruct(
  ApprovalSetStruct? approvalSet, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    approvalSet
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addApprovalSetStructData(
  Map<String, dynamic> firestoreData,
  ApprovalSetStruct? approvalSet,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (approvalSet == null) {
    return;
  }
  if (approvalSet.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && approvalSet.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final approvalSetData =
      getApprovalSetFirestoreData(approvalSet, forFieldValue);
  final nestedData =
      approvalSetData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = approvalSet.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getApprovalSetFirestoreData(
  ApprovalSetStruct? approvalSet, [
  bool forFieldValue = false,
]) {
  if (approvalSet == null) {
    return {};
  }
  final firestoreData = mapToFirestore(approvalSet.toMap());

  // Add any Firestore field values
  approvalSet.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getApprovalSetListFirestoreData(
  List<ApprovalSetStruct>? approvalSets,
) =>
    approvalSets?.map((e) => getApprovalSetFirestoreData(e, true)).toList() ??
    [];
