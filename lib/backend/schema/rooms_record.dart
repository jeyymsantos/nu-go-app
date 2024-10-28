import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RoomsRecord extends FirestoreRecord {
  RoomsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "room_number" field.
  int? _roomNumber;
  int get roomNumber => _roomNumber ?? 0;
  bool hasRoomNumber() => _roomNumber != null;

  // "room_name" field.
  String? _roomName;
  String get roomName => _roomName ?? '';
  bool hasRoomName() => _roomName != null;

  // "room_designation" field.
  DocumentReference? _roomDesignation;
  DocumentReference? get roomDesignation => _roomDesignation;
  bool hasRoomDesignation() => _roomDesignation != null;

  // "room_created_by" field.
  DocumentReference? _roomCreatedBy;
  DocumentReference? get roomCreatedBy => _roomCreatedBy;
  bool hasRoomCreatedBy() => _roomCreatedBy != null;

  // "room_created_on" field.
  DateTime? _roomCreatedOn;
  DateTime? get roomCreatedOn => _roomCreatedOn;
  bool hasRoomCreatedOn() => _roomCreatedOn != null;

  // "room_facility_type" field.
  DocumentReference? _roomFacilityType;
  DocumentReference? get roomFacilityType => _roomFacilityType;
  bool hasRoomFacilityType() => _roomFacilityType != null;

  // "room_maximum_capacity" field.
  int? _roomMaximumCapacity;
  int get roomMaximumCapacity => _roomMaximumCapacity ?? 0;
  bool hasRoomMaximumCapacity() => _roomMaximumCapacity != null;

  void _initializeFields() {
    _roomNumber = castToType<int>(snapshotData['room_number']);
    _roomName = snapshotData['room_name'] as String?;
    _roomDesignation = snapshotData['room_designation'] as DocumentReference?;
    _roomCreatedBy = snapshotData['room_created_by'] as DocumentReference?;
    _roomCreatedOn = snapshotData['room_created_on'] as DateTime?;
    _roomFacilityType =
        snapshotData['room_facility_type'] as DocumentReference?;
    _roomMaximumCapacity =
        castToType<int>(snapshotData['room_maximum_capacity']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rooms');

  static Stream<RoomsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RoomsRecord.fromSnapshot(s));

  static Future<RoomsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RoomsRecord.fromSnapshot(s));

  static RoomsRecord fromSnapshot(DocumentSnapshot snapshot) => RoomsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RoomsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RoomsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RoomsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RoomsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRoomsRecordData({
  int? roomNumber,
  String? roomName,
  DocumentReference? roomDesignation,
  DocumentReference? roomCreatedBy,
  DateTime? roomCreatedOn,
  DocumentReference? roomFacilityType,
  int? roomMaximumCapacity,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'room_number': roomNumber,
      'room_name': roomName,
      'room_designation': roomDesignation,
      'room_created_by': roomCreatedBy,
      'room_created_on': roomCreatedOn,
      'room_facility_type': roomFacilityType,
      'room_maximum_capacity': roomMaximumCapacity,
    }.withoutNulls,
  );

  return firestoreData;
}

class RoomsRecordDocumentEquality implements Equality<RoomsRecord> {
  const RoomsRecordDocumentEquality();

  @override
  bool equals(RoomsRecord? e1, RoomsRecord? e2) {
    return e1?.roomNumber == e2?.roomNumber &&
        e1?.roomName == e2?.roomName &&
        e1?.roomDesignation == e2?.roomDesignation &&
        e1?.roomCreatedBy == e2?.roomCreatedBy &&
        e1?.roomCreatedOn == e2?.roomCreatedOn &&
        e1?.roomFacilityType == e2?.roomFacilityType &&
        e1?.roomMaximumCapacity == e2?.roomMaximumCapacity;
  }

  @override
  int hash(RoomsRecord? e) => const ListEquality().hash([
        e?.roomNumber,
        e?.roomName,
        e?.roomDesignation,
        e?.roomCreatedBy,
        e?.roomCreatedOn,
        e?.roomFacilityType,
        e?.roomMaximumCapacity
      ]);

  @override
  bool isValidKey(Object? o) => o is RoomsRecord;
}
