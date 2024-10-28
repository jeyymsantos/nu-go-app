import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FacilityTypesRecord extends FirestoreRecord {
  FacilityTypesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "facility_name" field.
  String? _facilityName;
  String get facilityName => _facilityName ?? '';
  bool hasFacilityName() => _facilityName != null;

  // "facility_nickname" field.
  String? _facilityNickname;
  String get facilityNickname => _facilityNickname ?? '';
  bool hasFacilityNickname() => _facilityNickname != null;

  // "facility_description" field.
  String? _facilityDescription;
  String get facilityDescription => _facilityDescription ?? '';
  bool hasFacilityDescription() => _facilityDescription != null;

  // "facility_created_on" field.
  DateTime? _facilityCreatedOn;
  DateTime? get facilityCreatedOn => _facilityCreatedOn;
  bool hasFacilityCreatedOn() => _facilityCreatedOn != null;

  // "facility_created_by" field.
  DocumentReference? _facilityCreatedBy;
  DocumentReference? get facilityCreatedBy => _facilityCreatedBy;
  bool hasFacilityCreatedBy() => _facilityCreatedBy != null;

  void _initializeFields() {
    _facilityName = snapshotData['facility_name'] as String?;
    _facilityNickname = snapshotData['facility_nickname'] as String?;
    _facilityDescription = snapshotData['facility_description'] as String?;
    _facilityCreatedOn = snapshotData['facility_created_on'] as DateTime?;
    _facilityCreatedBy =
        snapshotData['facility_created_by'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('facility_types');

  static Stream<FacilityTypesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FacilityTypesRecord.fromSnapshot(s));

  static Future<FacilityTypesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FacilityTypesRecord.fromSnapshot(s));

  static FacilityTypesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FacilityTypesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FacilityTypesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FacilityTypesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FacilityTypesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FacilityTypesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFacilityTypesRecordData({
  String? facilityName,
  String? facilityNickname,
  String? facilityDescription,
  DateTime? facilityCreatedOn,
  DocumentReference? facilityCreatedBy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'facility_name': facilityName,
      'facility_nickname': facilityNickname,
      'facility_description': facilityDescription,
      'facility_created_on': facilityCreatedOn,
      'facility_created_by': facilityCreatedBy,
    }.withoutNulls,
  );

  return firestoreData;
}

class FacilityTypesRecordDocumentEquality
    implements Equality<FacilityTypesRecord> {
  const FacilityTypesRecordDocumentEquality();

  @override
  bool equals(FacilityTypesRecord? e1, FacilityTypesRecord? e2) {
    return e1?.facilityName == e2?.facilityName &&
        e1?.facilityNickname == e2?.facilityNickname &&
        e1?.facilityDescription == e2?.facilityDescription &&
        e1?.facilityCreatedOn == e2?.facilityCreatedOn &&
        e1?.facilityCreatedBy == e2?.facilityCreatedBy;
  }

  @override
  int hash(FacilityTypesRecord? e) => const ListEquality().hash([
        e?.facilityName,
        e?.facilityNickname,
        e?.facilityDescription,
        e?.facilityCreatedOn,
        e?.facilityCreatedBy
      ]);

  @override
  bool isValidKey(Object? o) => o is FacilityTypesRecord;
}
