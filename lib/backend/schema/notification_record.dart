import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationRecord extends FirestoreRecord {
  NotificationRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "school_admin" field.
  DocumentReference? _schoolAdmin;
  DocumentReference? get schoolAdmin => _schoolAdmin;
  bool hasSchoolAdmin() => _schoolAdmin != null;

  // "organization" field.
  DocumentReference? _organization;
  DocumentReference? get organization => _organization;
  bool hasOrganization() => _organization != null;

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

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _schoolAdmin = snapshotData['school_admin'] as DocumentReference?;
    _organization = snapshotData['organization'] as DocumentReference?;
    _message = snapshotData['message'] as String?;
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _icon = snapshotData['icon'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('notification')
          : FirebaseFirestore.instance.collectionGroup('notification');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('notification').doc(id);

  static Stream<NotificationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificationRecord.fromSnapshot(s));

  static Future<NotificationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotificationRecord.fromSnapshot(s));

  static NotificationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationRecordData({
  DocumentReference? schoolAdmin,
  DocumentReference? organization,
  String? message,
  DateTime? timestamp,
  String? icon,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'school_admin': schoolAdmin,
      'organization': organization,
      'message': message,
      'timestamp': timestamp,
      'icon': icon,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationRecordDocumentEquality
    implements Equality<NotificationRecord> {
  const NotificationRecordDocumentEquality();

  @override
  bool equals(NotificationRecord? e1, NotificationRecord? e2) {
    return e1?.schoolAdmin == e2?.schoolAdmin &&
        e1?.organization == e2?.organization &&
        e1?.message == e2?.message &&
        e1?.timestamp == e2?.timestamp &&
        e1?.icon == e2?.icon;
  }

  @override
  int hash(NotificationRecord? e) => const ListEquality().hash(
      [e?.schoolAdmin, e?.organization, e?.message, e?.timestamp, e?.icon]);

  @override
  bool isValidKey(Object? o) => o is NotificationRecord;
}
