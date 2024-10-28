import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ApplicationRecord extends FirestoreRecord {
  ApplicationRecord._(
    super.reference,
    super.data,
  ) {
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
          ? parent.collection('application')
          : FirebaseFirestore.instance.collectionGroup('application');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('application').doc(id);

  static Stream<ApplicationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ApplicationRecord.fromSnapshot(s));

  static Future<ApplicationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ApplicationRecord.fromSnapshot(s));

  static ApplicationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ApplicationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ApplicationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ApplicationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ApplicationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ApplicationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createApplicationRecordData({
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

class ApplicationRecordDocumentEquality implements Equality<ApplicationRecord> {
  const ApplicationRecordDocumentEquality();

  @override
  bool equals(ApplicationRecord? e1, ApplicationRecord? e2) {
    return e1?.schoolAdmin == e2?.schoolAdmin &&
        e1?.message == e2?.message &&
        e1?.timestamp == e2?.timestamp &&
        e1?.icon == e2?.icon &&
        e1?.status == e2?.status &&
        e1?.feedback == e2?.feedback;
  }

  @override
  int hash(ApplicationRecord? e) => const ListEquality().hash([
        e?.schoolAdmin,
        e?.message,
        e?.timestamp,
        e?.icon,
        e?.status,
        e?.feedback
      ]);

  @override
  bool isValidKey(Object? o) => o is ApplicationRecord;
}
