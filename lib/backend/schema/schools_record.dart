import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SchoolsRecord extends FirestoreRecord {
  SchoolsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "school_name" field.
  String? _schoolName;
  String get schoolName => _schoolName ?? '';
  bool hasSchoolName() => _schoolName != null;

  // "school_nickname" field.
  String? _schoolNickname;
  String get schoolNickname => _schoolNickname ?? '';
  bool hasSchoolNickname() => _schoolNickname != null;

  // "school_dean" field.
  DocumentReference? _schoolDean;
  DocumentReference? get schoolDean => _schoolDean;
  bool hasSchoolDean() => _schoolDean != null;

  // "school_description" field.
  String? _schoolDescription;
  String get schoolDescription => _schoolDescription ?? '';
  bool hasSchoolDescription() => _schoolDescription != null;

  // "school_created_on" field.
  DateTime? _schoolCreatedOn;
  DateTime? get schoolCreatedOn => _schoolCreatedOn;
  bool hasSchoolCreatedOn() => _schoolCreatedOn != null;

  // "school_created_by" field.
  DocumentReference? _schoolCreatedBy;
  DocumentReference? get schoolCreatedBy => _schoolCreatedBy;
  bool hasSchoolCreatedBy() => _schoolCreatedBy != null;

  void _initializeFields() {
    _schoolName = snapshotData['school_name'] as String?;
    _schoolNickname = snapshotData['school_nickname'] as String?;
    _schoolDean = snapshotData['school_dean'] as DocumentReference?;
    _schoolDescription = snapshotData['school_description'] as String?;
    _schoolCreatedOn = snapshotData['school_created_on'] as DateTime?;
    _schoolCreatedBy = snapshotData['school_created_by'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('schools');

  static Stream<SchoolsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SchoolsRecord.fromSnapshot(s));

  static Future<SchoolsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SchoolsRecord.fromSnapshot(s));

  static SchoolsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SchoolsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SchoolsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SchoolsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SchoolsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SchoolsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSchoolsRecordData({
  String? schoolName,
  String? schoolNickname,
  DocumentReference? schoolDean,
  String? schoolDescription,
  DateTime? schoolCreatedOn,
  DocumentReference? schoolCreatedBy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'school_name': schoolName,
      'school_nickname': schoolNickname,
      'school_dean': schoolDean,
      'school_description': schoolDescription,
      'school_created_on': schoolCreatedOn,
      'school_created_by': schoolCreatedBy,
    }.withoutNulls,
  );

  return firestoreData;
}

class SchoolsRecordDocumentEquality implements Equality<SchoolsRecord> {
  const SchoolsRecordDocumentEquality();

  @override
  bool equals(SchoolsRecord? e1, SchoolsRecord? e2) {
    return e1?.schoolName == e2?.schoolName &&
        e1?.schoolNickname == e2?.schoolNickname &&
        e1?.schoolDean == e2?.schoolDean &&
        e1?.schoolDescription == e2?.schoolDescription &&
        e1?.schoolCreatedOn == e2?.schoolCreatedOn &&
        e1?.schoolCreatedBy == e2?.schoolCreatedBy;
  }

  @override
  int hash(SchoolsRecord? e) => const ListEquality().hash([
        e?.schoolName,
        e?.schoolNickname,
        e?.schoolDean,
        e?.schoolDescription,
        e?.schoolCreatedOn,
        e?.schoolCreatedBy
      ]);

  @override
  bool isValidKey(Object? o) => o is SchoolsRecord;
}
