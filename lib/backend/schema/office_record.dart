import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OfficeRecord extends FirestoreRecord {
  OfficeRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "office_name" field.
  String? _officeName;
  String get officeName => _officeName ?? '';
  bool hasOfficeName() => _officeName != null;

  // "office_head" field.
  DocumentReference? _officeHead;
  DocumentReference? get officeHead => _officeHead;
  bool hasOfficeHead() => _officeHead != null;

  // "office_created_by" field.
  DocumentReference? _officeCreatedBy;
  DocumentReference? get officeCreatedBy => _officeCreatedBy;
  bool hasOfficeCreatedBy() => _officeCreatedBy != null;

  // "office_created_on" field.
  DateTime? _officeCreatedOn;
  DateTime? get officeCreatedOn => _officeCreatedOn;
  bool hasOfficeCreatedOn() => _officeCreatedOn != null;

  // "office_nickname" field.
  String? _officeNickname;
  String get officeNickname => _officeNickname ?? '';
  bool hasOfficeNickname() => _officeNickname != null;

  // "office_description" field.
  String? _officeDescription;
  String get officeDescription => _officeDescription ?? '';
  bool hasOfficeDescription() => _officeDescription != null;

  void _initializeFields() {
    _officeName = snapshotData['office_name'] as String?;
    _officeHead = snapshotData['office_head'] as DocumentReference?;
    _officeCreatedBy = snapshotData['office_created_by'] as DocumentReference?;
    _officeCreatedOn = snapshotData['office_created_on'] as DateTime?;
    _officeNickname = snapshotData['office_nickname'] as String?;
    _officeDescription = snapshotData['office_description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('office');

  static Stream<OfficeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OfficeRecord.fromSnapshot(s));

  static Future<OfficeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OfficeRecord.fromSnapshot(s));

  static OfficeRecord fromSnapshot(DocumentSnapshot snapshot) => OfficeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OfficeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OfficeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OfficeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OfficeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOfficeRecordData({
  String? officeName,
  DocumentReference? officeHead,
  DocumentReference? officeCreatedBy,
  DateTime? officeCreatedOn,
  String? officeNickname,
  String? officeDescription,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'office_name': officeName,
      'office_head': officeHead,
      'office_created_by': officeCreatedBy,
      'office_created_on': officeCreatedOn,
      'office_nickname': officeNickname,
      'office_description': officeDescription,
    }.withoutNulls,
  );

  return firestoreData;
}

class OfficeRecordDocumentEquality implements Equality<OfficeRecord> {
  const OfficeRecordDocumentEquality();

  @override
  bool equals(OfficeRecord? e1, OfficeRecord? e2) {
    return e1?.officeName == e2?.officeName &&
        e1?.officeHead == e2?.officeHead &&
        e1?.officeCreatedBy == e2?.officeCreatedBy &&
        e1?.officeCreatedOn == e2?.officeCreatedOn &&
        e1?.officeNickname == e2?.officeNickname &&
        e1?.officeDescription == e2?.officeDescription;
  }

  @override
  int hash(OfficeRecord? e) => const ListEquality().hash([
        e?.officeName,
        e?.officeHead,
        e?.officeCreatedBy,
        e?.officeCreatedOn,
        e?.officeNickname,
        e?.officeDescription
      ]);

  @override
  bool isValidKey(Object? o) => o is OfficeRecord;
}
