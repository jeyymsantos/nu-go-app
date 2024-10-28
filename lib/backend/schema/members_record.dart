import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MembersRecord extends FirestoreRecord {
  MembersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user_reference" field.
  DocumentReference? _userReference;
  DocumentReference? get userReference => _userReference;
  bool hasUserReference() => _userReference != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "approved_by" field.
  DocumentReference? _approvedBy;
  DocumentReference? get approvedBy => _approvedBy;
  bool hasApprovedBy() => _approvedBy != null;

  // "isOfficer" field.
  bool? _isOfficer;
  bool get isOfficer => _isOfficer ?? false;
  bool hasIsOfficer() => _isOfficer != null;

  // "officer_role" field.
  String? _officerRole;
  String get officerRole => _officerRole ?? '';
  bool hasOfficerRole() => _officerRole != null;

  // "officer_index" field.
  int? _officerIndex;
  int get officerIndex => _officerIndex ?? 0;
  bool hasOfficerIndex() => _officerIndex != null;

  // "approval_signatory" field.
  List<ApprovalSignatoryStruct>? _approvalSignatory;
  List<ApprovalSignatoryStruct> get approvalSignatory =>
      _approvalSignatory ?? const [];
  bool hasApprovalSignatory() => _approvalSignatory != null;

  // "application_date" field.
  DateTime? _applicationDate;
  DateTime? get applicationDate => _applicationDate;
  bool hasApplicationDate() => _applicationDate != null;

  // "status_last_updated" field.
  DateTime? _statusLastUpdated;
  DateTime? get statusLastUpdated => _statusLastUpdated;
  bool hasStatusLastUpdated() => _statusLastUpdated != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _userReference = snapshotData['user_reference'] as DocumentReference?;
    _status = snapshotData['status'] as String?;
    _approvedBy = snapshotData['approved_by'] as DocumentReference?;
    _isOfficer = snapshotData['isOfficer'] as bool?;
    _officerRole = snapshotData['officer_role'] as String?;
    _officerIndex = castToType<int>(snapshotData['officer_index']);
    _approvalSignatory = getStructList(
      snapshotData['approval_signatory'],
      ApprovalSignatoryStruct.fromMap,
    );
    _applicationDate = snapshotData['application_date'] as DateTime?;
    _statusLastUpdated = snapshotData['status_last_updated'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('members')
          : FirebaseFirestore.instance.collectionGroup('members');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('members').doc(id);

  static Stream<MembersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MembersRecord.fromSnapshot(s));

  static Future<MembersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MembersRecord.fromSnapshot(s));

  static MembersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MembersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MembersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MembersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MembersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MembersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMembersRecordData({
  DocumentReference? userReference,
  String? status,
  DocumentReference? approvedBy,
  bool? isOfficer,
  String? officerRole,
  int? officerIndex,
  DateTime? applicationDate,
  DateTime? statusLastUpdated,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user_reference': userReference,
      'status': status,
      'approved_by': approvedBy,
      'isOfficer': isOfficer,
      'officer_role': officerRole,
      'officer_index': officerIndex,
      'application_date': applicationDate,
      'status_last_updated': statusLastUpdated,
    }.withoutNulls,
  );

  return firestoreData;
}

class MembersRecordDocumentEquality implements Equality<MembersRecord> {
  const MembersRecordDocumentEquality();

  @override
  bool equals(MembersRecord? e1, MembersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userReference == e2?.userReference &&
        e1?.status == e2?.status &&
        e1?.approvedBy == e2?.approvedBy &&
        e1?.isOfficer == e2?.isOfficer &&
        e1?.officerRole == e2?.officerRole &&
        e1?.officerIndex == e2?.officerIndex &&
        listEquality.equals(e1?.approvalSignatory, e2?.approvalSignatory) &&
        e1?.applicationDate == e2?.applicationDate &&
        e1?.statusLastUpdated == e2?.statusLastUpdated;
  }

  @override
  int hash(MembersRecord? e) => const ListEquality().hash([
        e?.userReference,
        e?.status,
        e?.approvedBy,
        e?.isOfficer,
        e?.officerRole,
        e?.officerIndex,
        e?.approvalSignatory,
        e?.applicationDate,
        e?.statusLastUpdated
      ]);

  @override
  bool isValidKey(Object? o) => o is MembersRecord;
}
