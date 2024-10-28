import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventAttendeesRecord extends FirestoreRecord {
  EventAttendeesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ticket_code" field.
  String? _ticketCode;
  String get ticketCode => _ticketCode ?? '';
  bool hasTicketCode() => _ticketCode != null;

  // "ticket_status" field.
  String? _ticketStatus;
  String get ticketStatus => _ticketStatus ?? '';
  bool hasTicketStatus() => _ticketStatus != null;

  // "ticket_user" field.
  DocumentReference? _ticketUser;
  DocumentReference? get ticketUser => _ticketUser;
  bool hasTicketUser() => _ticketUser != null;

  // "ticket_updated_on" field.
  DateTime? _ticketUpdatedOn;
  DateTime? get ticketUpdatedOn => _ticketUpdatedOn;
  bool hasTicketUpdatedOn() => _ticketUpdatedOn != null;

  // "ticket_created_on" field.
  DateTime? _ticketCreatedOn;
  DateTime? get ticketCreatedOn => _ticketCreatedOn;
  bool hasTicketCreatedOn() => _ticketCreatedOn != null;

  // "ticket_approved_by" field.
  DocumentReference? _ticketApprovedBy;
  DocumentReference? get ticketApprovedBy => _ticketApprovedBy;
  bool hasTicketApprovedBy() => _ticketApprovedBy != null;

  // "ticket_check_in" field.
  DateTime? _ticketCheckIn;
  DateTime? get ticketCheckIn => _ticketCheckIn;
  bool hasTicketCheckIn() => _ticketCheckIn != null;

  // "ticket_check_out" field.
  DateTime? _ticketCheckOut;
  DateTime? get ticketCheckOut => _ticketCheckOut;
  bool hasTicketCheckOut() => _ticketCheckOut != null;

  // "ticket_feedback" field.
  String? _ticketFeedback;
  String get ticketFeedback => _ticketFeedback ?? '';
  bool hasTicketFeedback() => _ticketFeedback != null;

  // "ticket_feedback_timestamp" field.
  DateTime? _ticketFeedbackTimestamp;
  DateTime? get ticketFeedbackTimestamp => _ticketFeedbackTimestamp;
  bool hasTicketFeedbackTimestamp() => _ticketFeedbackTimestamp != null;

  // "ticket_feedback_rating" field.
  double? _ticketFeedbackRating;
  double get ticketFeedbackRating => _ticketFeedbackRating ?? 0.0;
  bool hasTicketFeedbackRating() => _ticketFeedbackRating != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _ticketCode = snapshotData['ticket_code'] as String?;
    _ticketStatus = snapshotData['ticket_status'] as String?;
    _ticketUser = snapshotData['ticket_user'] as DocumentReference?;
    _ticketUpdatedOn = snapshotData['ticket_updated_on'] as DateTime?;
    _ticketCreatedOn = snapshotData['ticket_created_on'] as DateTime?;
    _ticketApprovedBy =
        snapshotData['ticket_approved_by'] as DocumentReference?;
    _ticketCheckIn = snapshotData['ticket_check_in'] as DateTime?;
    _ticketCheckOut = snapshotData['ticket_check_out'] as DateTime?;
    _ticketFeedback = snapshotData['ticket_feedback'] as String?;
    _ticketFeedbackTimestamp =
        snapshotData['ticket_feedback_timestamp'] as DateTime?;
    _ticketFeedbackRating =
        castToType<double>(snapshotData['ticket_feedback_rating']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('event_attendees')
          : FirebaseFirestore.instance.collectionGroup('event_attendees');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('event_attendees').doc(id);

  static Stream<EventAttendeesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventAttendeesRecord.fromSnapshot(s));

  static Future<EventAttendeesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventAttendeesRecord.fromSnapshot(s));

  static EventAttendeesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EventAttendeesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventAttendeesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventAttendeesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventAttendeesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventAttendeesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventAttendeesRecordData({
  String? ticketCode,
  String? ticketStatus,
  DocumentReference? ticketUser,
  DateTime? ticketUpdatedOn,
  DateTime? ticketCreatedOn,
  DocumentReference? ticketApprovedBy,
  DateTime? ticketCheckIn,
  DateTime? ticketCheckOut,
  String? ticketFeedback,
  DateTime? ticketFeedbackTimestamp,
  double? ticketFeedbackRating,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ticket_code': ticketCode,
      'ticket_status': ticketStatus,
      'ticket_user': ticketUser,
      'ticket_updated_on': ticketUpdatedOn,
      'ticket_created_on': ticketCreatedOn,
      'ticket_approved_by': ticketApprovedBy,
      'ticket_check_in': ticketCheckIn,
      'ticket_check_out': ticketCheckOut,
      'ticket_feedback': ticketFeedback,
      'ticket_feedback_timestamp': ticketFeedbackTimestamp,
      'ticket_feedback_rating': ticketFeedbackRating,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventAttendeesRecordDocumentEquality
    implements Equality<EventAttendeesRecord> {
  const EventAttendeesRecordDocumentEquality();

  @override
  bool equals(EventAttendeesRecord? e1, EventAttendeesRecord? e2) {
    return e1?.ticketCode == e2?.ticketCode &&
        e1?.ticketStatus == e2?.ticketStatus &&
        e1?.ticketUser == e2?.ticketUser &&
        e1?.ticketUpdatedOn == e2?.ticketUpdatedOn &&
        e1?.ticketCreatedOn == e2?.ticketCreatedOn &&
        e1?.ticketApprovedBy == e2?.ticketApprovedBy &&
        e1?.ticketCheckIn == e2?.ticketCheckIn &&
        e1?.ticketCheckOut == e2?.ticketCheckOut &&
        e1?.ticketFeedback == e2?.ticketFeedback &&
        e1?.ticketFeedbackTimestamp == e2?.ticketFeedbackTimestamp &&
        e1?.ticketFeedbackRating == e2?.ticketFeedbackRating;
  }

  @override
  int hash(EventAttendeesRecord? e) => const ListEquality().hash([
        e?.ticketCode,
        e?.ticketStatus,
        e?.ticketUser,
        e?.ticketUpdatedOn,
        e?.ticketCreatedOn,
        e?.ticketApprovedBy,
        e?.ticketCheckIn,
        e?.ticketCheckOut,
        e?.ticketFeedback,
        e?.ticketFeedbackTimestamp,
        e?.ticketFeedbackRating
      ]);

  @override
  bool isValidKey(Object? o) => o is EventAttendeesRecord;
}
