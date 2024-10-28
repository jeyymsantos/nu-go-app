import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FeedbackRecord extends FirestoreRecord {
  FeedbackRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "feedback" field.
  String? _feedback;
  String get feedback => _feedback ?? '';
  bool hasFeedback() => _feedback != null;

  // "submitted_on" field.
  DateTime? _submittedOn;
  DateTime? get submittedOn => _submittedOn;
  bool hasSubmittedOn() => _submittedOn != null;

  // "submitted_by" field.
  DocumentReference? _submittedBy;
  DocumentReference? get submittedBy => _submittedBy;
  bool hasSubmittedBy() => _submittedBy != null;

  // "screenshot" field.
  String? _screenshot;
  String get screenshot => _screenshot ?? '';
  bool hasScreenshot() => _screenshot != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "status_remarks" field.
  String? _statusRemarks;
  String get statusRemarks => _statusRemarks ?? '';
  bool hasStatusRemarks() => _statusRemarks != null;

  // "status_changed_when" field.
  DateTime? _statusChangedWhen;
  DateTime? get statusChangedWhen => _statusChangedWhen;
  bool hasStatusChangedWhen() => _statusChangedWhen != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  void _initializeFields() {
    _type = snapshotData['type'] as String?;
    _feedback = snapshotData['feedback'] as String?;
    _submittedOn = snapshotData['submitted_on'] as DateTime?;
    _submittedBy = snapshotData['submitted_by'] as DocumentReference?;
    _screenshot = snapshotData['screenshot'] as String?;
    _status = snapshotData['status'] as String?;
    _statusRemarks = snapshotData['status_remarks'] as String?;
    _statusChangedWhen = snapshotData['status_changed_when'] as DateTime?;
    _id = snapshotData['id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('feedback');

  static Stream<FeedbackRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FeedbackRecord.fromSnapshot(s));

  static Future<FeedbackRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FeedbackRecord.fromSnapshot(s));

  static FeedbackRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FeedbackRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FeedbackRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FeedbackRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FeedbackRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FeedbackRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFeedbackRecordData({
  String? type,
  String? feedback,
  DateTime? submittedOn,
  DocumentReference? submittedBy,
  String? screenshot,
  String? status,
  String? statusRemarks,
  DateTime? statusChangedWhen,
  String? id,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type': type,
      'feedback': feedback,
      'submitted_on': submittedOn,
      'submitted_by': submittedBy,
      'screenshot': screenshot,
      'status': status,
      'status_remarks': statusRemarks,
      'status_changed_when': statusChangedWhen,
      'id': id,
    }.withoutNulls,
  );

  return firestoreData;
}

class FeedbackRecordDocumentEquality implements Equality<FeedbackRecord> {
  const FeedbackRecordDocumentEquality();

  @override
  bool equals(FeedbackRecord? e1, FeedbackRecord? e2) {
    return e1?.type == e2?.type &&
        e1?.feedback == e2?.feedback &&
        e1?.submittedOn == e2?.submittedOn &&
        e1?.submittedBy == e2?.submittedBy &&
        e1?.screenshot == e2?.screenshot &&
        e1?.status == e2?.status &&
        e1?.statusRemarks == e2?.statusRemarks &&
        e1?.statusChangedWhen == e2?.statusChangedWhen &&
        e1?.id == e2?.id;
  }

  @override
  int hash(FeedbackRecord? e) => const ListEquality().hash([
        e?.type,
        e?.feedback,
        e?.submittedOn,
        e?.submittedBy,
        e?.screenshot,
        e?.status,
        e?.statusRemarks,
        e?.statusChangedWhen,
        e?.id
      ]);

  @override
  bool isValidKey(Object? o) => o is FeedbackRecord;
}
