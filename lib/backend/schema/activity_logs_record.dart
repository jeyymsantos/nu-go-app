import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ActivityLogsRecord extends FirestoreRecord {
  ActivityLogsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "module" field.
  String? _module;
  String get module => _module ?? '';
  bool hasModule() => _module != null;

  // "done_by" field.
  DocumentReference? _doneBy;
  DocumentReference? get doneBy => _doneBy;
  bool hasDoneBy() => _doneBy != null;

  // "done_by_role" field.
  String? _doneByRole;
  String get doneByRole => _doneByRole ?? '';
  bool hasDoneByRole() => _doneByRole != null;

  // "done_to" field.
  DocumentReference? _doneTo;
  DocumentReference? get doneTo => _doneTo;
  bool hasDoneTo() => _doneTo != null;

  // "done_when" field.
  DateTime? _doneWhen;
  DateTime? get doneWhen => _doneWhen;
  bool hasDoneWhen() => _doneWhen != null;

  // "done_to_name" field.
  String? _doneToName;
  String get doneToName => _doneToName ?? '';
  bool hasDoneToName() => _doneToName != null;

  void _initializeFields() {
    _type = snapshotData['type'] as String?;
    _description = snapshotData['description'] as String?;
    _module = snapshotData['module'] as String?;
    _doneBy = snapshotData['done_by'] as DocumentReference?;
    _doneByRole = snapshotData['done_by_role'] as String?;
    _doneTo = snapshotData['done_to'] as DocumentReference?;
    _doneWhen = snapshotData['done_when'] as DateTime?;
    _doneToName = snapshotData['done_to_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('activity_logs');

  static Stream<ActivityLogsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ActivityLogsRecord.fromSnapshot(s));

  static Future<ActivityLogsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ActivityLogsRecord.fromSnapshot(s));

  static ActivityLogsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ActivityLogsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ActivityLogsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ActivityLogsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ActivityLogsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ActivityLogsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createActivityLogsRecordData({
  String? type,
  String? description,
  String? module,
  DocumentReference? doneBy,
  String? doneByRole,
  DocumentReference? doneTo,
  DateTime? doneWhen,
  String? doneToName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type': type,
      'description': description,
      'module': module,
      'done_by': doneBy,
      'done_by_role': doneByRole,
      'done_to': doneTo,
      'done_when': doneWhen,
      'done_to_name': doneToName,
    }.withoutNulls,
  );

  return firestoreData;
}

class ActivityLogsRecordDocumentEquality
    implements Equality<ActivityLogsRecord> {
  const ActivityLogsRecordDocumentEquality();

  @override
  bool equals(ActivityLogsRecord? e1, ActivityLogsRecord? e2) {
    return e1?.type == e2?.type &&
        e1?.description == e2?.description &&
        e1?.module == e2?.module &&
        e1?.doneBy == e2?.doneBy &&
        e1?.doneByRole == e2?.doneByRole &&
        e1?.doneTo == e2?.doneTo &&
        e1?.doneWhen == e2?.doneWhen &&
        e1?.doneToName == e2?.doneToName;
  }

  @override
  int hash(ActivityLogsRecord? e) => const ListEquality().hash([
        e?.type,
        e?.description,
        e?.module,
        e?.doneBy,
        e?.doneByRole,
        e?.doneTo,
        e?.doneWhen,
        e?.doneToName
      ]);

  @override
  bool isValidKey(Object? o) => o is ActivityLogsRecord;
}
