// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventProgramStruct extends FFFirebaseStruct {
  EventProgramStruct({
    DateTime? startTime,
    DateTime? endTime,
    String? activity,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _startTime = startTime,
        _endTime = endTime,
        _activity = activity,
        super(firestoreUtilData);

  // "start_time" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  set startTime(DateTime? val) => _startTime = val;

  bool hasStartTime() => _startTime != null;

  // "end_time" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  set endTime(DateTime? val) => _endTime = val;

  bool hasEndTime() => _endTime != null;

  // "activity" field.
  String? _activity;
  String get activity => _activity ?? '';
  set activity(String? val) => _activity = val;

  bool hasActivity() => _activity != null;

  static EventProgramStruct fromMap(Map<String, dynamic> data) =>
      EventProgramStruct(
        startTime: data['start_time'] as DateTime?,
        endTime: data['end_time'] as DateTime?,
        activity: data['activity'] as String?,
      );

  static EventProgramStruct? maybeFromMap(dynamic data) => data is Map
      ? EventProgramStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'start_time': _startTime,
        'end_time': _endTime,
        'activity': _activity,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'start_time': serializeParam(
          _startTime,
          ParamType.DateTime,
        ),
        'end_time': serializeParam(
          _endTime,
          ParamType.DateTime,
        ),
        'activity': serializeParam(
          _activity,
          ParamType.String,
        ),
      }.withoutNulls;

  static EventProgramStruct fromSerializableMap(Map<String, dynamic> data) =>
      EventProgramStruct(
        startTime: deserializeParam(
          data['start_time'],
          ParamType.DateTime,
          false,
        ),
        endTime: deserializeParam(
          data['end_time'],
          ParamType.DateTime,
          false,
        ),
        activity: deserializeParam(
          data['activity'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EventProgramStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EventProgramStruct &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        activity == other.activity;
  }

  @override
  int get hashCode => const ListEquality().hash([startTime, endTime, activity]);
}

EventProgramStruct createEventProgramStruct({
  DateTime? startTime,
  DateTime? endTime,
  String? activity,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EventProgramStruct(
      startTime: startTime,
      endTime: endTime,
      activity: activity,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EventProgramStruct? updateEventProgramStruct(
  EventProgramStruct? eventProgram, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    eventProgram
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEventProgramStructData(
  Map<String, dynamic> firestoreData,
  EventProgramStruct? eventProgram,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (eventProgram == null) {
    return;
  }
  if (eventProgram.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && eventProgram.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final eventProgramData =
      getEventProgramFirestoreData(eventProgram, forFieldValue);
  final nestedData =
      eventProgramData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = eventProgram.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEventProgramFirestoreData(
  EventProgramStruct? eventProgram, [
  bool forFieldValue = false,
]) {
  if (eventProgram == null) {
    return {};
  }
  final firestoreData = mapToFirestore(eventProgram.toMap());

  // Add any Firestore field values
  eventProgram.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEventProgramListFirestoreData(
  List<EventProgramStruct>? eventPrograms,
) =>
    eventPrograms?.map((e) => getEventProgramFirestoreData(e, true)).toList() ??
    [];
