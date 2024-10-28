import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventsRecord extends FirestoreRecord {
  EventsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "event_code" field.
  String? _eventCode;
  String get eventCode => _eventCode ?? '';
  bool hasEventCode() => _eventCode != null;

  // "event_name" field.
  String? _eventName;
  String get eventName => _eventName ?? '';
  bool hasEventName() => _eventName != null;

  // "event_organizer" field.
  DocumentReference? _eventOrganizer;
  DocumentReference? get eventOrganizer => _eventOrganizer;
  bool hasEventOrganizer() => _eventOrganizer != null;

  // "start_date" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "end_time" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  bool hasEndTime() => _endTime != null;

  // "rationale" field.
  String? _rationale;
  String get rationale => _rationale ?? '';
  bool hasRationale() => _rationale != null;

  // "objectives" field.
  String? _objectives;
  String get objectives => _objectives ?? '';
  bool hasObjectives() => _objectives != null;

  // "facility" field.
  DocumentReference? _facility;
  DocumentReference? get facility => _facility;
  bool hasFacility() => _facility != null;

  // "participant_type" field.
  String? _participantType;
  String get participantType => _participantType ?? '';
  bool hasParticipantType() => _participantType != null;

  // "target_output" field.
  String? _targetOutput;
  String get targetOutput => _targetOutput ?? '';
  bool hasTargetOutput() => _targetOutput != null;

  // "org_reference" field.
  DocumentReference? _orgReference;
  DocumentReference? get orgReference => _orgReference;
  bool hasOrgReference() => _orgReference != null;

  // "budget_request" field.
  List<BudgetListStruct>? _budgetRequest;
  List<BudgetListStruct> get budgetRequest => _budgetRequest ?? const [];
  bool hasBudgetRequest() => _budgetRequest != null;

  // "program_flow" field.
  List<EventProgramStruct>? _programFlow;
  List<EventProgramStruct> get programFlow => _programFlow ?? const [];
  bool hasProgramFlow() => _programFlow != null;

  // "signatories" field.
  SignatoriesStruct? _signatories;
  SignatoriesStruct get signatories => _signatories ?? SignatoriesStruct();
  bool hasSignatories() => _signatories != null;

  // "application" field.
  OrgApplicationStruct? _application;
  OrgApplicationStruct get application =>
      _application ?? OrgApplicationStruct();
  bool hasApplication() => _application != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "status_last_updated" field.
  DateTime? _statusLastUpdated;
  DateTime? get statusLastUpdated => _statusLastUpdated;
  bool hasStatusLastUpdated() => _statusLastUpdated != null;

  // "cover_photo" field.
  String? _coverPhoto;
  String get coverPhoto => _coverPhoto ?? '';
  bool hasCoverPhoto() => _coverPhoto != null;

  // "current_approval_step" field.
  int? _currentApprovalStep;
  int get currentApprovalStep => _currentApprovalStep ?? 0;
  bool hasCurrentApprovalStep() => _currentApprovalStep != null;

  // "current_approval_signatory" field.
  List<ApprovalSignatoryStruct>? _currentApprovalSignatory;
  List<ApprovalSignatoryStruct> get currentApprovalSignatory =>
      _currentApprovalSignatory ?? const [];
  bool hasCurrentApprovalSignatory() => _currentApprovalSignatory != null;

  // "settings" field.
  EventSettingsStruct? _settings;
  EventSettingsStruct get settings => _settings ?? EventSettingsStruct();
  bool hasSettings() => _settings != null;

  // "other_details" field.
  EventDetailsStruct? _otherDetails;
  EventDetailsStruct get otherDetails => _otherDetails ?? EventDetailsStruct();
  bool hasOtherDetails() => _otherDetails != null;

  void _initializeFields() {
    _eventCode = snapshotData['event_code'] as String?;
    _eventName = snapshotData['event_name'] as String?;
    _eventOrganizer = snapshotData['event_organizer'] as DocumentReference?;
    _startDate = snapshotData['start_date'] as DateTime?;
    _endTime = snapshotData['end_time'] as DateTime?;
    _rationale = snapshotData['rationale'] as String?;
    _objectives = snapshotData['objectives'] as String?;
    _facility = snapshotData['facility'] as DocumentReference?;
    _participantType = snapshotData['participant_type'] as String?;
    _targetOutput = snapshotData['target_output'] as String?;
    _orgReference = snapshotData['org_reference'] as DocumentReference?;
    _budgetRequest = getStructList(
      snapshotData['budget_request'],
      BudgetListStruct.fromMap,
    );
    _programFlow = getStructList(
      snapshotData['program_flow'],
      EventProgramStruct.fromMap,
    );
    _signatories = SignatoriesStruct.maybeFromMap(snapshotData['signatories']);
    _application =
        OrgApplicationStruct.maybeFromMap(snapshotData['application']);
    _status = snapshotData['status'] as String?;
    _statusLastUpdated = snapshotData['status_last_updated'] as DateTime?;
    _coverPhoto = snapshotData['cover_photo'] as String?;
    _currentApprovalStep =
        castToType<int>(snapshotData['current_approval_step']);
    _currentApprovalSignatory = getStructList(
      snapshotData['current_approval_signatory'],
      ApprovalSignatoryStruct.fromMap,
    );
    _settings = EventSettingsStruct.maybeFromMap(snapshotData['settings']);
    _otherDetails =
        EventDetailsStruct.maybeFromMap(snapshotData['other_details']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('events');

  static Stream<EventsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventsRecord.fromSnapshot(s));

  static Future<EventsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventsRecord.fromSnapshot(s));

  static EventsRecord fromSnapshot(DocumentSnapshot snapshot) => EventsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventsRecordData({
  String? eventCode,
  String? eventName,
  DocumentReference? eventOrganizer,
  DateTime? startDate,
  DateTime? endTime,
  String? rationale,
  String? objectives,
  DocumentReference? facility,
  String? participantType,
  String? targetOutput,
  DocumentReference? orgReference,
  SignatoriesStruct? signatories,
  OrgApplicationStruct? application,
  String? status,
  DateTime? statusLastUpdated,
  String? coverPhoto,
  int? currentApprovalStep,
  EventSettingsStruct? settings,
  EventDetailsStruct? otherDetails,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'event_code': eventCode,
      'event_name': eventName,
      'event_organizer': eventOrganizer,
      'start_date': startDate,
      'end_time': endTime,
      'rationale': rationale,
      'objectives': objectives,
      'facility': facility,
      'participant_type': participantType,
      'target_output': targetOutput,
      'org_reference': orgReference,
      'signatories': SignatoriesStruct().toMap(),
      'application': OrgApplicationStruct().toMap(),
      'status': status,
      'status_last_updated': statusLastUpdated,
      'cover_photo': coverPhoto,
      'current_approval_step': currentApprovalStep,
      'settings': EventSettingsStruct().toMap(),
      'other_details': EventDetailsStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "signatories" field.
  addSignatoriesStructData(firestoreData, signatories, 'signatories');

  // Handle nested data for "application" field.
  addOrgApplicationStructData(firestoreData, application, 'application');

  // Handle nested data for "settings" field.
  addEventSettingsStructData(firestoreData, settings, 'settings');

  // Handle nested data for "other_details" field.
  addEventDetailsStructData(firestoreData, otherDetails, 'other_details');

  return firestoreData;
}

class EventsRecordDocumentEquality implements Equality<EventsRecord> {
  const EventsRecordDocumentEquality();

  @override
  bool equals(EventsRecord? e1, EventsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.eventCode == e2?.eventCode &&
        e1?.eventName == e2?.eventName &&
        e1?.eventOrganizer == e2?.eventOrganizer &&
        e1?.startDate == e2?.startDate &&
        e1?.endTime == e2?.endTime &&
        e1?.rationale == e2?.rationale &&
        e1?.objectives == e2?.objectives &&
        e1?.facility == e2?.facility &&
        e1?.participantType == e2?.participantType &&
        e1?.targetOutput == e2?.targetOutput &&
        e1?.orgReference == e2?.orgReference &&
        listEquality.equals(e1?.budgetRequest, e2?.budgetRequest) &&
        listEquality.equals(e1?.programFlow, e2?.programFlow) &&
        e1?.signatories == e2?.signatories &&
        e1?.application == e2?.application &&
        e1?.status == e2?.status &&
        e1?.statusLastUpdated == e2?.statusLastUpdated &&
        e1?.coverPhoto == e2?.coverPhoto &&
        e1?.currentApprovalStep == e2?.currentApprovalStep &&
        listEquality.equals(
            e1?.currentApprovalSignatory, e2?.currentApprovalSignatory) &&
        e1?.settings == e2?.settings &&
        e1?.otherDetails == e2?.otherDetails;
  }

  @override
  int hash(EventsRecord? e) => const ListEquality().hash([
        e?.eventCode,
        e?.eventName,
        e?.eventOrganizer,
        e?.startDate,
        e?.endTime,
        e?.rationale,
        e?.objectives,
        e?.facility,
        e?.participantType,
        e?.targetOutput,
        e?.orgReference,
        e?.budgetRequest,
        e?.programFlow,
        e?.signatories,
        e?.application,
        e?.status,
        e?.statusLastUpdated,
        e?.coverPhoto,
        e?.currentApprovalStep,
        e?.currentApprovalSignatory,
        e?.settings,
        e?.otherDetails
      ]);

  @override
  bool isValidKey(Object? o) => o is EventsRecord;
}
