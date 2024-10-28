// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class EventDetailsStruct extends FFFirebaseStruct {
  EventDetailsStruct({
    int? maxParticipants,
    String? onlinePlatform,
    String? onlineLink,
    LatLng? outsideLocation,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _maxParticipants = maxParticipants,
        _onlinePlatform = onlinePlatform,
        _onlineLink = onlineLink,
        _outsideLocation = outsideLocation,
        super(firestoreUtilData);

  // "maxParticipants" field.
  int? _maxParticipants;
  int get maxParticipants => _maxParticipants ?? 0;
  set maxParticipants(int? val) => _maxParticipants = val;

  void incrementMaxParticipants(int amount) =>
      maxParticipants = maxParticipants + amount;

  bool hasMaxParticipants() => _maxParticipants != null;

  // "onlinePlatform" field.
  String? _onlinePlatform;
  String get onlinePlatform => _onlinePlatform ?? '';
  set onlinePlatform(String? val) => _onlinePlatform = val;

  bool hasOnlinePlatform() => _onlinePlatform != null;

  // "onlineLink" field.
  String? _onlineLink;
  String get onlineLink => _onlineLink ?? '';
  set onlineLink(String? val) => _onlineLink = val;

  bool hasOnlineLink() => _onlineLink != null;

  // "outsideLocation" field.
  LatLng? _outsideLocation;
  LatLng? get outsideLocation => _outsideLocation;
  set outsideLocation(LatLng? val) => _outsideLocation = val;

  bool hasOutsideLocation() => _outsideLocation != null;

  static EventDetailsStruct fromMap(Map<String, dynamic> data) =>
      EventDetailsStruct(
        maxParticipants: castToType<int>(data['maxParticipants']),
        onlinePlatform: data['onlinePlatform'] as String?,
        onlineLink: data['onlineLink'] as String?,
        outsideLocation: data['outsideLocation'] as LatLng?,
      );

  static EventDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? EventDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'maxParticipants': _maxParticipants,
        'onlinePlatform': _onlinePlatform,
        'onlineLink': _onlineLink,
        'outsideLocation': _outsideLocation,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'maxParticipants': serializeParam(
          _maxParticipants,
          ParamType.int,
        ),
        'onlinePlatform': serializeParam(
          _onlinePlatform,
          ParamType.String,
        ),
        'onlineLink': serializeParam(
          _onlineLink,
          ParamType.String,
        ),
        'outsideLocation': serializeParam(
          _outsideLocation,
          ParamType.LatLng,
        ),
      }.withoutNulls;

  static EventDetailsStruct fromSerializableMap(Map<String, dynamic> data) =>
      EventDetailsStruct(
        maxParticipants: deserializeParam(
          data['maxParticipants'],
          ParamType.int,
          false,
        ),
        onlinePlatform: deserializeParam(
          data['onlinePlatform'],
          ParamType.String,
          false,
        ),
        onlineLink: deserializeParam(
          data['onlineLink'],
          ParamType.String,
          false,
        ),
        outsideLocation: deserializeParam(
          data['outsideLocation'],
          ParamType.LatLng,
          false,
        ),
      );

  @override
  String toString() => 'EventDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EventDetailsStruct &&
        maxParticipants == other.maxParticipants &&
        onlinePlatform == other.onlinePlatform &&
        onlineLink == other.onlineLink &&
        outsideLocation == other.outsideLocation;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([maxParticipants, onlinePlatform, onlineLink, outsideLocation]);
}

EventDetailsStruct createEventDetailsStruct({
  int? maxParticipants,
  String? onlinePlatform,
  String? onlineLink,
  LatLng? outsideLocation,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EventDetailsStruct(
      maxParticipants: maxParticipants,
      onlinePlatform: onlinePlatform,
      onlineLink: onlineLink,
      outsideLocation: outsideLocation,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EventDetailsStruct? updateEventDetailsStruct(
  EventDetailsStruct? eventDetails, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    eventDetails
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEventDetailsStructData(
  Map<String, dynamic> firestoreData,
  EventDetailsStruct? eventDetails,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (eventDetails == null) {
    return;
  }
  if (eventDetails.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && eventDetails.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final eventDetailsData =
      getEventDetailsFirestoreData(eventDetails, forFieldValue);
  final nestedData =
      eventDetailsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = eventDetails.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEventDetailsFirestoreData(
  EventDetailsStruct? eventDetails, [
  bool forFieldValue = false,
]) {
  if (eventDetails == null) {
    return {};
  }
  final firestoreData = mapToFirestore(eventDetails.toMap());

  // Add any Firestore field values
  eventDetails.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEventDetailsListFirestoreData(
  List<EventDetailsStruct>? eventDetailss,
) =>
    eventDetailss?.map((e) => getEventDetailsFirestoreData(e, true)).toList() ??
    [];
