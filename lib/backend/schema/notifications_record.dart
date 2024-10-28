import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationsRecord extends FirestoreRecord {
  NotificationsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "multiple_users" field.
  List<DocumentReference>? _multipleUsers;
  List<DocumentReference> get multipleUsers => _multipleUsers ?? const [];
  bool hasMultipleUsers() => _multipleUsers != null;

  // "created_by" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  // "created_on" field.
  DateTime? _createdOn;
  DateTime? get createdOn => _createdOn;
  bool hasCreatedOn() => _createdOn != null;

  // "icon_image" field.
  String? _iconImage;
  String get iconImage => _iconImage ?? '';
  bool hasIconImage() => _iconImage != null;

  void _initializeFields() {
    _type = snapshotData['type'] as String?;
    _title = snapshotData['title'] as String?;
    _message = snapshotData['message'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _multipleUsers = getDataList(snapshotData['multiple_users']);
    _createdBy = snapshotData['created_by'] as DocumentReference?;
    _createdOn = snapshotData['created_on'] as DateTime?;
    _iconImage = snapshotData['icon_image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notifications');

  static Stream<NotificationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificationsRecord.fromSnapshot(s));

  static Future<NotificationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotificationsRecord.fromSnapshot(s));

  static NotificationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationsRecordData({
  String? type,
  String? title,
  String? message,
  DocumentReference? user,
  DocumentReference? createdBy,
  DateTime? createdOn,
  String? iconImage,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type': type,
      'title': title,
      'message': message,
      'user': user,
      'created_by': createdBy,
      'created_on': createdOn,
      'icon_image': iconImage,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationsRecordDocumentEquality
    implements Equality<NotificationsRecord> {
  const NotificationsRecordDocumentEquality();

  @override
  bool equals(NotificationsRecord? e1, NotificationsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.type == e2?.type &&
        e1?.title == e2?.title &&
        e1?.message == e2?.message &&
        e1?.user == e2?.user &&
        listEquality.equals(e1?.multipleUsers, e2?.multipleUsers) &&
        e1?.createdBy == e2?.createdBy &&
        e1?.createdOn == e2?.createdOn &&
        e1?.iconImage == e2?.iconImage;
  }

  @override
  int hash(NotificationsRecord? e) => const ListEquality().hash([
        e?.type,
        e?.title,
        e?.message,
        e?.user,
        e?.multipleUsers,
        e?.createdBy,
        e?.createdOn,
        e?.iconImage
      ]);

  @override
  bool isValidKey(Object? o) => o is NotificationsRecord;
}
