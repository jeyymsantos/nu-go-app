import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EquipmentsRecord extends FirestoreRecord {
  EquipmentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "equipment_name" field.
  String? _equipmentName;
  String get equipmentName => _equipmentName ?? '';
  bool hasEquipmentName() => _equipmentName != null;

  // "equipment_tag" field.
  String? _equipmentTag;
  String get equipmentTag => _equipmentTag ?? '';
  bool hasEquipmentTag() => _equipmentTag != null;

  // "equipment_location" field.
  DocumentReference? _equipmentLocation;
  DocumentReference? get equipmentLocation => _equipmentLocation;
  bool hasEquipmentLocation() => _equipmentLocation != null;

  // "equipment_type" field.
  String? _equipmentType;
  String get equipmentType => _equipmentType ?? '';
  bool hasEquipmentType() => _equipmentType != null;

  // "equipment_unit" field.
  String? _equipmentUnit;
  String get equipmentUnit => _equipmentUnit ?? '';
  bool hasEquipmentUnit() => _equipmentUnit != null;

  // "equipment_quantity" field.
  int? _equipmentQuantity;
  int get equipmentQuantity => _equipmentQuantity ?? 0;
  bool hasEquipmentQuantity() => _equipmentQuantity != null;

  // "equipment_created_by" field.
  DocumentReference? _equipmentCreatedBy;
  DocumentReference? get equipmentCreatedBy => _equipmentCreatedBy;
  bool hasEquipmentCreatedBy() => _equipmentCreatedBy != null;

  // "equipment_created_on" field.
  DateTime? _equipmentCreatedOn;
  DateTime? get equipmentCreatedOn => _equipmentCreatedOn;
  bool hasEquipmentCreatedOn() => _equipmentCreatedOn != null;

  // "equipment_date_acquired" field.
  DateTime? _equipmentDateAcquired;
  DateTime? get equipmentDateAcquired => _equipmentDateAcquired;
  bool hasEquipmentDateAcquired() => _equipmentDateAcquired != null;

  void _initializeFields() {
    _equipmentName = snapshotData['equipment_name'] as String?;
    _equipmentTag = snapshotData['equipment_tag'] as String?;
    _equipmentLocation =
        snapshotData['equipment_location'] as DocumentReference?;
    _equipmentType = snapshotData['equipment_type'] as String?;
    _equipmentUnit = snapshotData['equipment_unit'] as String?;
    _equipmentQuantity = castToType<int>(snapshotData['equipment_quantity']);
    _equipmentCreatedBy =
        snapshotData['equipment_created_by'] as DocumentReference?;
    _equipmentCreatedOn = snapshotData['equipment_created_on'] as DateTime?;
    _equipmentDateAcquired =
        snapshotData['equipment_date_acquired'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('equipments');

  static Stream<EquipmentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EquipmentsRecord.fromSnapshot(s));

  static Future<EquipmentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EquipmentsRecord.fromSnapshot(s));

  static EquipmentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EquipmentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EquipmentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EquipmentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EquipmentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EquipmentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEquipmentsRecordData({
  String? equipmentName,
  String? equipmentTag,
  DocumentReference? equipmentLocation,
  String? equipmentType,
  String? equipmentUnit,
  int? equipmentQuantity,
  DocumentReference? equipmentCreatedBy,
  DateTime? equipmentCreatedOn,
  DateTime? equipmentDateAcquired,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'equipment_name': equipmentName,
      'equipment_tag': equipmentTag,
      'equipment_location': equipmentLocation,
      'equipment_type': equipmentType,
      'equipment_unit': equipmentUnit,
      'equipment_quantity': equipmentQuantity,
      'equipment_created_by': equipmentCreatedBy,
      'equipment_created_on': equipmentCreatedOn,
      'equipment_date_acquired': equipmentDateAcquired,
    }.withoutNulls,
  );

  return firestoreData;
}

class EquipmentsRecordDocumentEquality implements Equality<EquipmentsRecord> {
  const EquipmentsRecordDocumentEquality();

  @override
  bool equals(EquipmentsRecord? e1, EquipmentsRecord? e2) {
    return e1?.equipmentName == e2?.equipmentName &&
        e1?.equipmentTag == e2?.equipmentTag &&
        e1?.equipmentLocation == e2?.equipmentLocation &&
        e1?.equipmentType == e2?.equipmentType &&
        e1?.equipmentUnit == e2?.equipmentUnit &&
        e1?.equipmentQuantity == e2?.equipmentQuantity &&
        e1?.equipmentCreatedBy == e2?.equipmentCreatedBy &&
        e1?.equipmentCreatedOn == e2?.equipmentCreatedOn &&
        e1?.equipmentDateAcquired == e2?.equipmentDateAcquired;
  }

  @override
  int hash(EquipmentsRecord? e) => const ListEquality().hash([
        e?.equipmentName,
        e?.equipmentTag,
        e?.equipmentLocation,
        e?.equipmentType,
        e?.equipmentUnit,
        e?.equipmentQuantity,
        e?.equipmentCreatedBy,
        e?.equipmentCreatedOn,
        e?.equipmentDateAcquired
      ]);

  @override
  bool isValidKey(Object? o) => o is EquipmentsRecord;
}
