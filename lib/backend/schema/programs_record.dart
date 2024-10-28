import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProgramsRecord extends FirestoreRecord {
  ProgramsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "program_name" field.
  String? _programName;
  String get programName => _programName ?? '';
  bool hasProgramName() => _programName != null;

  // "program_nickname" field.
  String? _programNickname;
  String get programNickname => _programNickname ?? '';
  bool hasProgramNickname() => _programNickname != null;

  // "program_chair" field.
  DocumentReference? _programChair;
  DocumentReference? get programChair => _programChair;
  bool hasProgramChair() => _programChair != null;

  // "program_description" field.
  String? _programDescription;
  String get programDescription => _programDescription ?? '';
  bool hasProgramDescription() => _programDescription != null;

  // "program_created_on" field.
  DateTime? _programCreatedOn;
  DateTime? get programCreatedOn => _programCreatedOn;
  bool hasProgramCreatedOn() => _programCreatedOn != null;

  // "program_created_by" field.
  DocumentReference? _programCreatedBy;
  DocumentReference? get programCreatedBy => _programCreatedBy;
  bool hasProgramCreatedBy() => _programCreatedBy != null;

  // "school_under" field.
  DocumentReference? _schoolUnder;
  DocumentReference? get schoolUnder => _schoolUnder;
  bool hasSchoolUnder() => _schoolUnder != null;

  void _initializeFields() {
    _programName = snapshotData['program_name'] as String?;
    _programNickname = snapshotData['program_nickname'] as String?;
    _programChair = snapshotData['program_chair'] as DocumentReference?;
    _programDescription = snapshotData['program_description'] as String?;
    _programCreatedOn = snapshotData['program_created_on'] as DateTime?;
    _programCreatedBy =
        snapshotData['program_created_by'] as DocumentReference?;
    _schoolUnder = snapshotData['school_under'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('programs');

  static Stream<ProgramsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProgramsRecord.fromSnapshot(s));

  static Future<ProgramsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProgramsRecord.fromSnapshot(s));

  static ProgramsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProgramsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProgramsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProgramsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProgramsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProgramsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProgramsRecordData({
  String? programName,
  String? programNickname,
  DocumentReference? programChair,
  String? programDescription,
  DateTime? programCreatedOn,
  DocumentReference? programCreatedBy,
  DocumentReference? schoolUnder,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'program_name': programName,
      'program_nickname': programNickname,
      'program_chair': programChair,
      'program_description': programDescription,
      'program_created_on': programCreatedOn,
      'program_created_by': programCreatedBy,
      'school_under': schoolUnder,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProgramsRecordDocumentEquality implements Equality<ProgramsRecord> {
  const ProgramsRecordDocumentEquality();

  @override
  bool equals(ProgramsRecord? e1, ProgramsRecord? e2) {
    return e1?.programName == e2?.programName &&
        e1?.programNickname == e2?.programNickname &&
        e1?.programChair == e2?.programChair &&
        e1?.programDescription == e2?.programDescription &&
        e1?.programCreatedOn == e2?.programCreatedOn &&
        e1?.programCreatedBy == e2?.programCreatedBy &&
        e1?.schoolUnder == e2?.schoolUnder;
  }

  @override
  int hash(ProgramsRecord? e) => const ListEquality().hash([
        e?.programName,
        e?.programNickname,
        e?.programChair,
        e?.programDescription,
        e?.programCreatedOn,
        e?.programCreatedBy,
        e?.schoolUnder
      ]);

  @override
  bool isValidKey(Object? o) => o is ProgramsRecord;
}
