// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CalendarStruct extends FFFirebaseStruct {
  CalendarStruct({
    String? eventName,
    DateTime? from,
    DateTime? to,
    Color? background,
    bool? isAllDay,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _eventName = eventName,
        _from = from,
        _to = to,
        _background = background,
        _isAllDay = isAllDay,
        super(firestoreUtilData);

  // "eventName" field.
  String? _eventName;
  String get eventName => _eventName ?? '';
  set eventName(String? val) => _eventName = val;

  bool hasEventName() => _eventName != null;

  // "from" field.
  DateTime? _from;
  DateTime? get from => _from;
  set from(DateTime? val) => _from = val;

  bool hasFrom() => _from != null;

  // "to" field.
  DateTime? _to;
  DateTime? get to => _to;
  set to(DateTime? val) => _to = val;

  bool hasTo() => _to != null;

  // "background" field.
  Color? _background;
  Color? get background => _background;
  set background(Color? val) => _background = val;

  bool hasBackground() => _background != null;

  // "isAllDay" field.
  bool? _isAllDay;
  bool get isAllDay => _isAllDay ?? false;
  set isAllDay(bool? val) => _isAllDay = val;

  bool hasIsAllDay() => _isAllDay != null;

  static CalendarStruct fromMap(Map<String, dynamic> data) => CalendarStruct(
        eventName: data['eventName'] as String?,
        from: data['from'] as DateTime?,
        to: data['to'] as DateTime?,
        background: getSchemaColor(data['background']),
        isAllDay: data['isAllDay'] as bool?,
      );

  static CalendarStruct? maybeFromMap(dynamic data) =>
      data is Map ? CalendarStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'eventName': _eventName,
        'from': _from,
        'to': _to,
        'background': _background,
        'isAllDay': _isAllDay,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'eventName': serializeParam(
          _eventName,
          ParamType.String,
        ),
        'from': serializeParam(
          _from,
          ParamType.DateTime,
        ),
        'to': serializeParam(
          _to,
          ParamType.DateTime,
        ),
        'background': serializeParam(
          _background,
          ParamType.Color,
        ),
        'isAllDay': serializeParam(
          _isAllDay,
          ParamType.bool,
        ),
      }.withoutNulls;

  static CalendarStruct fromSerializableMap(Map<String, dynamic> data) =>
      CalendarStruct(
        eventName: deserializeParam(
          data['eventName'],
          ParamType.String,
          false,
        ),
        from: deserializeParam(
          data['from'],
          ParamType.DateTime,
          false,
        ),
        to: deserializeParam(
          data['to'],
          ParamType.DateTime,
          false,
        ),
        background: deserializeParam(
          data['background'],
          ParamType.Color,
          false,
        ),
        isAllDay: deserializeParam(
          data['isAllDay'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'CalendarStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CalendarStruct &&
        eventName == other.eventName &&
        from == other.from &&
        to == other.to &&
        background == other.background &&
        isAllDay == other.isAllDay;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([eventName, from, to, background, isAllDay]);
}

CalendarStruct createCalendarStruct({
  String? eventName,
  DateTime? from,
  DateTime? to,
  Color? background,
  bool? isAllDay,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CalendarStruct(
      eventName: eventName,
      from: from,
      to: to,
      background: background,
      isAllDay: isAllDay,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CalendarStruct? updateCalendarStruct(
  CalendarStruct? calendar, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    calendar
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCalendarStructData(
  Map<String, dynamic> firestoreData,
  CalendarStruct? calendar,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (calendar == null) {
    return;
  }
  if (calendar.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && calendar.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final calendarData = getCalendarFirestoreData(calendar, forFieldValue);
  final nestedData = calendarData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = calendar.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCalendarFirestoreData(
  CalendarStruct? calendar, [
  bool forFieldValue = false,
]) {
  if (calendar == null) {
    return {};
  }
  final firestoreData = mapToFirestore(calendar.toMap());

  // Add any Firestore field values
  calendar.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCalendarListFirestoreData(
  List<CalendarStruct>? calendars,
) =>
    calendars?.map((e) => getCalendarFirestoreData(e, true)).toList() ?? [];
