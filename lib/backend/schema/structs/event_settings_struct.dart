// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class EventSettingsStruct extends FFFirebaseStruct {
  EventSettingsStruct({
    bool? isOnline,
    bool? isCampus,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _isOnline = isOnline,
        _isCampus = isCampus,
        super(firestoreUtilData);

  // "isOnline" field.
  bool? _isOnline;
  bool get isOnline => _isOnline ?? false;
  set isOnline(bool? val) => _isOnline = val;

  bool hasIsOnline() => _isOnline != null;

  // "isCampus" field.
  bool? _isCampus;
  bool get isCampus => _isCampus ?? false;
  set isCampus(bool? val) => _isCampus = val;

  bool hasIsCampus() => _isCampus != null;

  static EventSettingsStruct fromMap(Map<String, dynamic> data) =>
      EventSettingsStruct(
        isOnline: data['isOnline'] as bool?,
        isCampus: data['isCampus'] as bool?,
      );

  static EventSettingsStruct? maybeFromMap(dynamic data) => data is Map
      ? EventSettingsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'isOnline': _isOnline,
        'isCampus': _isCampus,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'isOnline': serializeParam(
          _isOnline,
          ParamType.bool,
        ),
        'isCampus': serializeParam(
          _isCampus,
          ParamType.bool,
        ),
      }.withoutNulls;

  static EventSettingsStruct fromSerializableMap(Map<String, dynamic> data) =>
      EventSettingsStruct(
        isOnline: deserializeParam(
          data['isOnline'],
          ParamType.bool,
          false,
        ),
        isCampus: deserializeParam(
          data['isCampus'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'EventSettingsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EventSettingsStruct &&
        isOnline == other.isOnline &&
        isCampus == other.isCampus;
  }

  @override
  int get hashCode => const ListEquality().hash([isOnline, isCampus]);
}

EventSettingsStruct createEventSettingsStruct({
  bool? isOnline,
  bool? isCampus,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EventSettingsStruct(
      isOnline: isOnline,
      isCampus: isCampus,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EventSettingsStruct? updateEventSettingsStruct(
  EventSettingsStruct? eventSettings, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    eventSettings
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEventSettingsStructData(
  Map<String, dynamic> firestoreData,
  EventSettingsStruct? eventSettings,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (eventSettings == null) {
    return;
  }
  if (eventSettings.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && eventSettings.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final eventSettingsData =
      getEventSettingsFirestoreData(eventSettings, forFieldValue);
  final nestedData =
      eventSettingsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = eventSettings.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEventSettingsFirestoreData(
  EventSettingsStruct? eventSettings, [
  bool forFieldValue = false,
]) {
  if (eventSettings == null) {
    return {};
  }
  final firestoreData = mapToFirestore(eventSettings.toMap());

  // Add any Firestore field values
  eventSettings.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEventSettingsListFirestoreData(
  List<EventSettingsStruct>? eventSettingss,
) =>
    eventSettingss
        ?.map((e) => getEventSettingsFirestoreData(e, true))
        .toList() ??
    [];
