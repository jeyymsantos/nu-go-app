import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ApprovalSetsRecord extends FirestoreRecord {
  ApprovalSetsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "signatories" field.
  List<ApprovalSignatoryStruct>? _signatories;
  List<ApprovalSignatoryStruct> get signatories => _signatories ?? const [];
  bool hasSignatories() => _signatories != null;

  // "created_by" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  // "created_on" field.
  DateTime? _createdOn;
  DateTime? get createdOn => _createdOn;
  bool hasCreatedOn() => _createdOn != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _signatories = getStructList(
      snapshotData['signatories'],
      ApprovalSignatoryStruct.fromMap,
    );
    _createdBy = snapshotData['created_by'] as DocumentReference?;
    _createdOn = snapshotData['created_on'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('approval_sets');

  static Stream<ApprovalSetsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ApprovalSetsRecord.fromSnapshot(s));

  static Future<ApprovalSetsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ApprovalSetsRecord.fromSnapshot(s));

  static ApprovalSetsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ApprovalSetsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ApprovalSetsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ApprovalSetsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ApprovalSetsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ApprovalSetsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createApprovalSetsRecordData({
  String? name,
  DocumentReference? createdBy,
  DateTime? createdOn,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'created_by': createdBy,
      'created_on': createdOn,
    }.withoutNulls,
  );

  return firestoreData;
}

class ApprovalSetsRecordDocumentEquality
    implements Equality<ApprovalSetsRecord> {
  const ApprovalSetsRecordDocumentEquality();

  @override
  bool equals(ApprovalSetsRecord? e1, ApprovalSetsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        listEquality.equals(e1?.signatories, e2?.signatories) &&
        e1?.createdBy == e2?.createdBy &&
        e1?.createdOn == e2?.createdOn;
  }

  @override
  int hash(ApprovalSetsRecord? e) => const ListEquality()
      .hash([e?.name, e?.signatories, e?.createdBy, e?.createdOn]);

  @override
  bool isValidKey(Object? o) => o is ApprovalSetsRecord;
}
