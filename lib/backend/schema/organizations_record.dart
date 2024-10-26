import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrganizationsRecord extends FirestoreRecord {
  OrganizationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "organization_name" field.
  String? _organizationName;
  String get organizationName => _organizationName ?? '';
  bool hasOrganizationName() => _organizationName != null;

  // "organization_nickname" field.
  String? _organizationNickname;
  String get organizationNickname => _organizationNickname ?? '';
  bool hasOrganizationNickname() => _organizationNickname != null;

  // "org_adviser" field.
  DocumentReference? _orgAdviser;
  DocumentReference? get orgAdviser => _orgAdviser;
  bool hasOrgAdviser() => _orgAdviser != null;

  // "org_founder" field.
  DocumentReference? _orgFounder;
  DocumentReference? get orgFounder => _orgFounder;
  bool hasOrgFounder() => _orgFounder != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "scope" field.
  String? _scope;
  String get scope => _scope ?? '';
  bool hasScope() => _scope != null;

  // "purpose" field.
  String? _purpose;
  String get purpose => _purpose ?? '';
  bool hasPurpose() => _purpose != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  // "org_description" field.
  String? _orgDescription;
  String get orgDescription => _orgDescription ?? '';
  bool hasOrgDescription() => _orgDescription != null;

  // "signatories" field.
  SignatoriesStruct? _signatories;
  SignatoriesStruct get signatories => _signatories ?? SignatoriesStruct();
  bool hasSignatories() => _signatories != null;

  // "org_department" field.
  DocumentReference? _orgDepartment;
  DocumentReference? get orgDepartment => _orgDepartment;
  bool hasOrgDepartment() => _orgDepartment != null;

  // "org_school" field.
  DocumentReference? _orgSchool;
  DocumentReference? get orgSchool => _orgSchool;
  bool hasOrgSchool() => _orgSchool != null;

  // "application" field.
  OrgApplicationStruct? _application;
  OrgApplicationStruct get application =>
      _application ?? OrgApplicationStruct();
  bool hasApplication() => _application != null;

  // "status_last_updated" field.
  DateTime? _statusLastUpdated;
  DateTime? get statusLastUpdated => _statusLastUpdated;
  bool hasStatusLastUpdated() => _statusLastUpdated != null;

  // "dynamic_signatory" field.
  List<OrgSignatoryStruct>? _dynamicSignatory;
  List<OrgSignatoryStruct> get dynamicSignatory =>
      _dynamicSignatory ?? const [];
  bool hasDynamicSignatory() => _dynamicSignatory != null;

  // "cover_photo" field.
  String? _coverPhoto;
  String get coverPhoto => _coverPhoto ?? '';
  bool hasCoverPhoto() => _coverPhoto != null;

  // "current_approval_step" field.
  int? _currentApprovalStep;
  int get currentApprovalStep => _currentApprovalStep ?? 0;
  bool hasCurrentApprovalStep() => _currentApprovalStep != null;

  // "current_approval_signatory" field.
  List<ApprovalSignatoryStruct>? _currentApprovalSignatory;
  List<ApprovalSignatoryStruct> get currentApprovalSignatory =>
      _currentApprovalSignatory ?? const [];
  bool hasCurrentApprovalSignatory() => _currentApprovalSignatory != null;

  void _initializeFields() {
    _organizationName = snapshotData['organization_name'] as String?;
    _organizationNickname = snapshotData['organization_nickname'] as String?;
    _orgAdviser = snapshotData['org_adviser'] as DocumentReference?;
    _orgFounder = snapshotData['org_founder'] as DocumentReference?;
    _type = snapshotData['type'] as String?;
    _scope = snapshotData['scope'] as String?;
    _purpose = snapshotData['purpose'] as String?;
    _status = snapshotData['status'] as String?;
    _logo = snapshotData['logo'] as String?;
    _orgDescription = snapshotData['org_description'] as String?;
    _signatories = SignatoriesStruct.maybeFromMap(snapshotData['signatories']);
    _orgDepartment = snapshotData['org_department'] as DocumentReference?;
    _orgSchool = snapshotData['org_school'] as DocumentReference?;
    _application =
        OrgApplicationStruct.maybeFromMap(snapshotData['application']);
    _statusLastUpdated = snapshotData['status_last_updated'] as DateTime?;
    _dynamicSignatory = getStructList(
      snapshotData['dynamic_signatory'],
      OrgSignatoryStruct.fromMap,
    );
    _coverPhoto = snapshotData['cover_photo'] as String?;
    _currentApprovalStep =
        castToType<int>(snapshotData['current_approval_step']);
    _currentApprovalSignatory = getStructList(
      snapshotData['current_approval_signatory'],
      ApprovalSignatoryStruct.fromMap,
    );
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('organizations');

  static Stream<OrganizationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrganizationsRecord.fromSnapshot(s));

  static Future<OrganizationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrganizationsRecord.fromSnapshot(s));

  static OrganizationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OrganizationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrganizationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrganizationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrganizationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrganizationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrganizationsRecordData({
  String? organizationName,
  String? organizationNickname,
  DocumentReference? orgAdviser,
  DocumentReference? orgFounder,
  String? type,
  String? scope,
  String? purpose,
  String? status,
  String? logo,
  String? orgDescription,
  SignatoriesStruct? signatories,
  DocumentReference? orgDepartment,
  DocumentReference? orgSchool,
  OrgApplicationStruct? application,
  DateTime? statusLastUpdated,
  String? coverPhoto,
  int? currentApprovalStep,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'organization_name': organizationName,
      'organization_nickname': organizationNickname,
      'org_adviser': orgAdviser,
      'org_founder': orgFounder,
      'type': type,
      'scope': scope,
      'purpose': purpose,
      'status': status,
      'logo': logo,
      'org_description': orgDescription,
      'signatories': SignatoriesStruct().toMap(),
      'org_department': orgDepartment,
      'org_school': orgSchool,
      'application': OrgApplicationStruct().toMap(),
      'status_last_updated': statusLastUpdated,
      'cover_photo': coverPhoto,
      'current_approval_step': currentApprovalStep,
    }.withoutNulls,
  );

  // Handle nested data for "signatories" field.
  addSignatoriesStructData(firestoreData, signatories, 'signatories');

  // Handle nested data for "application" field.
  addOrgApplicationStructData(firestoreData, application, 'application');

  return firestoreData;
}

class OrganizationsRecordDocumentEquality
    implements Equality<OrganizationsRecord> {
  const OrganizationsRecordDocumentEquality();

  @override
  bool equals(OrganizationsRecord? e1, OrganizationsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.organizationName == e2?.organizationName &&
        e1?.organizationNickname == e2?.organizationNickname &&
        e1?.orgAdviser == e2?.orgAdviser &&
        e1?.orgFounder == e2?.orgFounder &&
        e1?.type == e2?.type &&
        e1?.scope == e2?.scope &&
        e1?.purpose == e2?.purpose &&
        e1?.status == e2?.status &&
        e1?.logo == e2?.logo &&
        e1?.orgDescription == e2?.orgDescription &&
        e1?.signatories == e2?.signatories &&
        e1?.orgDepartment == e2?.orgDepartment &&
        e1?.orgSchool == e2?.orgSchool &&
        e1?.application == e2?.application &&
        e1?.statusLastUpdated == e2?.statusLastUpdated &&
        listEquality.equals(e1?.dynamicSignatory, e2?.dynamicSignatory) &&
        e1?.coverPhoto == e2?.coverPhoto &&
        e1?.currentApprovalStep == e2?.currentApprovalStep &&
        listEquality.equals(
            e1?.currentApprovalSignatory, e2?.currentApprovalSignatory);
  }

  @override
  int hash(OrganizationsRecord? e) => const ListEquality().hash([
        e?.organizationName,
        e?.organizationNickname,
        e?.orgAdviser,
        e?.orgFounder,
        e?.type,
        e?.scope,
        e?.purpose,
        e?.status,
        e?.logo,
        e?.orgDescription,
        e?.signatories,
        e?.orgDepartment,
        e?.orgSchool,
        e?.application,
        e?.statusLastUpdated,
        e?.dynamicSignatory,
        e?.coverPhoto,
        e?.currentApprovalStep,
        e?.currentApprovalSignatory
      ]);

  @override
  bool isValidKey(Object? o) => o is OrganizationsRecord;
}
