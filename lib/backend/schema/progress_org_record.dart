import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProgressOrgRecord extends FirestoreRecord {
  ProgressOrgRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "day" field.
  int? _day;
  int get day => _day ?? 0;
  bool hasDay() => _day != null;

  // "progress_value" field.
  double? _progressValue;
  double get progressValue => _progressValue ?? 0.0;
  bool hasProgressValue() => _progressValue != null;

  void _initializeFields() {
    _day = castToType<int>(snapshotData['day']);
    _progressValue = castToType<double>(snapshotData['progress_value']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('progress_org');

  static Stream<ProgressOrgRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProgressOrgRecord.fromSnapshot(s));

  static Future<ProgressOrgRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProgressOrgRecord.fromSnapshot(s));

  static ProgressOrgRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProgressOrgRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProgressOrgRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProgressOrgRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProgressOrgRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProgressOrgRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProgressOrgRecordData({
  int? day,
  double? progressValue,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'day': day,
      'progress_value': progressValue,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProgressOrgRecordDocumentEquality implements Equality<ProgressOrgRecord> {
  const ProgressOrgRecordDocumentEquality();

  @override
  bool equals(ProgressOrgRecord? e1, ProgressOrgRecord? e2) {
    return e1?.day == e2?.day && e1?.progressValue == e2?.progressValue;
  }

  @override
  int hash(ProgressOrgRecord? e) =>
      const ListEquality().hash([e?.day, e?.progressValue]);

  @override
  bool isValidKey(Object? o) => o is ProgressOrgRecord;
}
