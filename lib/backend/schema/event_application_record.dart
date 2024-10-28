import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventApplicationRecord extends FirestoreRecord {
  EventApplicationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "school_admin" field.
  DocumentReference? _schoolAdmin;
  DocumentReference? get schoolAdmin => _schoolAdmin;
  bool hasSchoolAdmin() => _schoolAdmin != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "icon" field.
  String? _icon;
  String get icon => _icon ?? '';
  bool hasIcon() => _icon != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "feedback" field.
  String? _feedback;
  String get feedback => _feedback ?? '';
  bool hasFeedback() => _feedback != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _schoolAdmin = snapshotData['school_admin'] as DocumentReference?;
    _message = snapshotData['message'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _icon = snapshotData['icon'] as String?;
    _status = snapshotData['status'] as String?;
    _feedback = snapshotData['feedback'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('event_application')
          : FirebaseFirestore.instance.collectionGroup('event_application');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('event_application').doc(id);

  static Stream<EventApplicationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventApplicationRecord.fromSnapshot(s));

  static Future<EventApplicationRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => EventApplicationRecord.fromSnapshot(s));

  static EventApplicationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EventApplicationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventApplicationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventApplicationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventApplicationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventApplicationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventApplicationRecordData({
  DocumentReference? schoolAdmin,
  String? message,
  DateTime? timestamp,
  String? icon,
  String? status,
  String? feedback,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'school_admin': schoolAdmin,
      'message': message,
      'timestamp': timestamp,
      'icon': icon,
      'status': status,
      'feedback': feedback,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventApplicationRecordDocumentEquality
    implements Equality<EventApplicationRecord> {
  const EventApplicationRecordDocumentEquality();

  @override
  bool equals(EventApplicationRecord? e1, EventApplicationRecord? e2) {
    return e1?.schoolAdmin == e2?.schoolAdmin &&
        e1?.message == e2?.message &&
        e1?.timestamp == e2?.timestamp &&
        e1?.icon == e2?.icon &&
        e1?.status == e2?.status &&
        e1?.feedback == e2?.feedback;
  }

  @override
  int hash(EventApplicationRecord? e) => const ListEquality().hash([
        e?.schoolAdmin,
        e?.message,
        e?.timestamp,
        e?.icon,
        e?.status,
        e?.feedback
      ]);

  @override
  bool isValidKey(Object? o) => o is EventApplicationRecord;
}
