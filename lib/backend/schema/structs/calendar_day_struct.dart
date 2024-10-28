// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CalendarDayStruct extends FFFirebaseStruct {
  CalendarDayStruct({
    bool? isPreviousMonth,
    bool? isNextMonth,
    DateTime? calendarDate,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _isPreviousMonth = isPreviousMonth,
        _isNextMonth = isNextMonth,
        _calendarDate = calendarDate,
        super(firestoreUtilData);

  // "IsPreviousMonth" field.
  bool? _isPreviousMonth;
  bool get isPreviousMonth => _isPreviousMonth ?? false;
  set isPreviousMonth(bool? val) => _isPreviousMonth = val;

  bool hasIsPreviousMonth() => _isPreviousMonth != null;

  // "IsNextMonth" field.
  bool? _isNextMonth;
  bool get isNextMonth => _isNextMonth ?? false;
  set isNextMonth(bool? val) => _isNextMonth = val;

  bool hasIsNextMonth() => _isNextMonth != null;

  // "CalendarDate" field.
  DateTime? _calendarDate;
  DateTime? get calendarDate => _calendarDate;
  set calendarDate(DateTime? val) => _calendarDate = val;

  bool hasCalendarDate() => _calendarDate != null;

  static CalendarDayStruct fromMap(Map<String, dynamic> data) =>
      CalendarDayStruct(
        isPreviousMonth: data['IsPreviousMonth'] as bool?,
        isNextMonth: data['IsNextMonth'] as bool?,
        calendarDate: data['CalendarDate'] as DateTime?,
      );

  static CalendarDayStruct? maybeFromMap(dynamic data) => data is Map
      ? CalendarDayStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'IsPreviousMonth': _isPreviousMonth,
        'IsNextMonth': _isNextMonth,
        'CalendarDate': _calendarDate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'IsPreviousMonth': serializeParam(
          _isPreviousMonth,
          ParamType.bool,
        ),
        'IsNextMonth': serializeParam(
          _isNextMonth,
          ParamType.bool,
        ),
        'CalendarDate': serializeParam(
          _calendarDate,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static CalendarDayStruct fromSerializableMap(Map<String, dynamic> data) =>
      CalendarDayStruct(
        isPreviousMonth: deserializeParam(
          data['IsPreviousMonth'],
          ParamType.bool,
          false,
        ),
        isNextMonth: deserializeParam(
          data['IsNextMonth'],
          ParamType.bool,
          false,
        ),
        calendarDate: deserializeParam(
          data['CalendarDate'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'CalendarDayStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CalendarDayStruct &&
        isPreviousMonth == other.isPreviousMonth &&
        isNextMonth == other.isNextMonth &&
        calendarDate == other.calendarDate;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([isPreviousMonth, isNextMonth, calendarDate]);
}

CalendarDayStruct createCalendarDayStruct({
  bool? isPreviousMonth,
  bool? isNextMonth,
  DateTime? calendarDate,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CalendarDayStruct(
      isPreviousMonth: isPreviousMonth,
      isNextMonth: isNextMonth,
      calendarDate: calendarDate,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CalendarDayStruct? updateCalendarDayStruct(
  CalendarDayStruct? calendarDay, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    calendarDay
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCalendarDayStructData(
  Map<String, dynamic> firestoreData,
  CalendarDayStruct? calendarDay,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (calendarDay == null) {
    return;
  }
  if (calendarDay.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && calendarDay.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final calendarDayData =
      getCalendarDayFirestoreData(calendarDay, forFieldValue);
  final nestedData =
      calendarDayData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = calendarDay.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCalendarDayFirestoreData(
  CalendarDayStruct? calendarDay, [
  bool forFieldValue = false,
]) {
  if (calendarDay == null) {
    return {};
  }
  final firestoreData = mapToFirestore(calendarDay.toMap());

  // Add any Firestore field values
  calendarDay.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCalendarDayListFirestoreData(
  List<CalendarDayStruct>? calendarDays,
) =>
    calendarDays?.map((e) => getCalendarDayFirestoreData(e, true)).toList() ??
    [];
