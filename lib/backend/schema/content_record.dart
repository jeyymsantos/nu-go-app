import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ContentRecord extends FirestoreRecord {
  ContentRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "posted_by" field.
  DocumentReference? _postedBy;
  DocumentReference? get postedBy => _postedBy;
  bool hasPostedBy() => _postedBy != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "datetime" field.
  DateTime? _datetime;
  DateTime? get datetime => _datetime;
  bool hasDatetime() => _datetime != null;

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "author" field.
  String? _author;
  String get author => _author ?? '';
  bool hasAuthor() => _author != null;

  void _initializeFields() {
    _postedBy = snapshotData['posted_by'] as DocumentReference?;
    _title = snapshotData['title'] as String?;
    _content = snapshotData['content'] as String?;
    _datetime = snapshotData['datetime'] as DateTime?;
    _photo = snapshotData['photo'] as String?;
    _type = snapshotData['type'] as String?;
    _author = snapshotData['author'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('content');

  static Stream<ContentRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ContentRecord.fromSnapshot(s));

  static Future<ContentRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ContentRecord.fromSnapshot(s));

  static ContentRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ContentRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ContentRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ContentRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ContentRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ContentRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createContentRecordData({
  DocumentReference? postedBy,
  String? title,
  String? content,
  DateTime? datetime,
  String? photo,
  String? type,
  String? author,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'posted_by': postedBy,
      'title': title,
      'content': content,
      'datetime': datetime,
      'photo': photo,
      'type': type,
      'author': author,
    }.withoutNulls,
  );

  return firestoreData;
}

class ContentRecordDocumentEquality implements Equality<ContentRecord> {
  const ContentRecordDocumentEquality();

  @override
  bool equals(ContentRecord? e1, ContentRecord? e2) {
    return e1?.postedBy == e2?.postedBy &&
        e1?.title == e2?.title &&
        e1?.content == e2?.content &&
        e1?.datetime == e2?.datetime &&
        e1?.photo == e2?.photo &&
        e1?.type == e2?.type &&
        e1?.author == e2?.author;
  }

  @override
  int hash(ContentRecord? e) => const ListEquality().hash([
        e?.postedBy,
        e?.title,
        e?.content,
        e?.datetime,
        e?.photo,
        e?.type,
        e?.author
      ]);

  @override
  bool isValidKey(Object? o) => o is ContentRecord;
}
