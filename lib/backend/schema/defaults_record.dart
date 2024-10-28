import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DefaultsRecord extends FirestoreRecord {
  DefaultsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "resources" field.
  ResourcesStruct? _resources;
  ResourcesStruct get resources => _resources ?? ResourcesStruct();
  bool hasResources() => _resources != null;

  // "school_admins" field.
  OfficeHeadsStruct? _schoolAdmins;
  OfficeHeadsStruct get schoolAdmins => _schoolAdmins ?? OfficeHeadsStruct();
  bool hasSchoolAdmins() => _schoolAdmins != null;

  // "program_wide" field.
  List<DocumentReference>? _programWide;
  List<DocumentReference> get programWide => _programWide ?? const [];
  bool hasProgramWide() => _programWide != null;

  // "isMaintenance" field.
  bool? _isMaintenance;
  bool get isMaintenance => _isMaintenance ?? false;
  bool hasIsMaintenance() => _isMaintenance != null;

  // "approval_sets" field.
  ApprovalSetStruct? _approvalSets;
  ApprovalSetStruct get approvalSets => _approvalSets ?? ApprovalSetStruct();
  bool hasApprovalSets() => _approvalSets != null;

  // "latest_version" field.
  String? _latestVersion;
  String get latestVersion => _latestVersion ?? '';
  bool hasLatestVersion() => _latestVersion != null;

  // "isSurveyMode" field.
  bool? _isSurveyMode;
  bool get isSurveyMode => _isSurveyMode ?? false;
  bool hasIsSurveyMode() => _isSurveyMode != null;

  // "paymongoLink" field.
  String? _paymongoLink;
  String get paymongoLink => _paymongoLink ?? '';
  bool hasPaymongoLink() => _paymongoLink != null;

  void _initializeFields() {
    _resources = ResourcesStruct.maybeFromMap(snapshotData['resources']);
    _schoolAdmins =
        OfficeHeadsStruct.maybeFromMap(snapshotData['school_admins']);
    _programWide = getDataList(snapshotData['program_wide']);
    _isMaintenance = snapshotData['isMaintenance'] as bool?;
    _approvalSets =
        ApprovalSetStruct.maybeFromMap(snapshotData['approval_sets']);
    _latestVersion = snapshotData['latest_version'] as String?;
    _isSurveyMode = snapshotData['isSurveyMode'] as bool?;
    _paymongoLink = snapshotData['paymongoLink'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('defaults');

  static Stream<DefaultsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DefaultsRecord.fromSnapshot(s));

  static Future<DefaultsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DefaultsRecord.fromSnapshot(s));

  static DefaultsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DefaultsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DefaultsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DefaultsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DefaultsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DefaultsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDefaultsRecordData({
  ResourcesStruct? resources,
  OfficeHeadsStruct? schoolAdmins,
  bool? isMaintenance,
  ApprovalSetStruct? approvalSets,
  String? latestVersion,
  bool? isSurveyMode,
  String? paymongoLink,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'resources': ResourcesStruct().toMap(),
      'school_admins': OfficeHeadsStruct().toMap(),
      'isMaintenance': isMaintenance,
      'approval_sets': ApprovalSetStruct().toMap(),
      'latest_version': latestVersion,
      'isSurveyMode': isSurveyMode,
      'paymongoLink': paymongoLink,
    }.withoutNulls,
  );

  // Handle nested data for "resources" field.
  addResourcesStructData(firestoreData, resources, 'resources');

  // Handle nested data for "school_admins" field.
  addOfficeHeadsStructData(firestoreData, schoolAdmins, 'school_admins');

  // Handle nested data for "approval_sets" field.
  addApprovalSetStructData(firestoreData, approvalSets, 'approval_sets');

  return firestoreData;
}

class DefaultsRecordDocumentEquality implements Equality<DefaultsRecord> {
  const DefaultsRecordDocumentEquality();

  @override
  bool equals(DefaultsRecord? e1, DefaultsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.resources == e2?.resources &&
        e1?.schoolAdmins == e2?.schoolAdmins &&
        listEquality.equals(e1?.programWide, e2?.programWide) &&
        e1?.isMaintenance == e2?.isMaintenance &&
        e1?.approvalSets == e2?.approvalSets &&
        e1?.latestVersion == e2?.latestVersion &&
        e1?.isSurveyMode == e2?.isSurveyMode &&
        e1?.paymongoLink == e2?.paymongoLink;
  }

  @override
  int hash(DefaultsRecord? e) => const ListEquality().hash([
        e?.resources,
        e?.schoolAdmins,
        e?.programWide,
        e?.isMaintenance,
        e?.approvalSets,
        e?.latestVersion,
        e?.isSurveyMode,
        e?.paymongoLink
      ]);

  @override
  bool isValidKey(Object? o) => o is DefaultsRecord;
}
