// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AddressStruct extends FFFirebaseStruct {
  AddressStruct({
    String? houseNumber,
    String? street,
    String? barangay,
    String? city,
    String? province,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _houseNumber = houseNumber,
        _street = street,
        _barangay = barangay,
        _city = city,
        _province = province,
        super(firestoreUtilData);

  // "house_number" field.
  String? _houseNumber;
  String get houseNumber => _houseNumber ?? '';
  set houseNumber(String? val) => _houseNumber = val;
  bool hasHouseNumber() => _houseNumber != null;

  // "street" field.
  String? _street;
  String get street => _street ?? '';
  set street(String? val) => _street = val;
  bool hasStreet() => _street != null;

  // "barangay" field.
  String? _barangay;
  String get barangay => _barangay ?? '';
  set barangay(String? val) => _barangay = val;
  bool hasBarangay() => _barangay != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  set city(String? val) => _city = val;
  bool hasCity() => _city != null;

  // "province" field.
  String? _province;
  String get province => _province ?? '';
  set province(String? val) => _province = val;
  bool hasProvince() => _province != null;

  static AddressStruct fromMap(Map<String, dynamic> data) => AddressStruct(
        houseNumber: data['house_number'] as String?,
        street: data['street'] as String?,
        barangay: data['barangay'] as String?,
        city: data['city'] as String?,
        province: data['province'] as String?,
      );

  static AddressStruct? maybeFromMap(dynamic data) =>
      data is Map ? AddressStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'house_number': _houseNumber,
        'street': _street,
        'barangay': _barangay,
        'city': _city,
        'province': _province,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'house_number': serializeParam(
          _houseNumber,
          ParamType.String,
        ),
        'street': serializeParam(
          _street,
          ParamType.String,
        ),
        'barangay': serializeParam(
          _barangay,
          ParamType.String,
        ),
        'city': serializeParam(
          _city,
          ParamType.String,
        ),
        'province': serializeParam(
          _province,
          ParamType.String,
        ),
      }.withoutNulls;

  static AddressStruct fromSerializableMap(Map<String, dynamic> data) =>
      AddressStruct(
        houseNumber: deserializeParam(
          data['house_number'],
          ParamType.String,
          false,
        ),
        street: deserializeParam(
          data['street'],
          ParamType.String,
          false,
        ),
        barangay: deserializeParam(
          data['barangay'],
          ParamType.String,
          false,
        ),
        city: deserializeParam(
          data['city'],
          ParamType.String,
          false,
        ),
        province: deserializeParam(
          data['province'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'AddressStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AddressStruct &&
        houseNumber == other.houseNumber &&
        street == other.street &&
        barangay == other.barangay &&
        city == other.city &&
        province == other.province;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([houseNumber, street, barangay, city, province]);
}

AddressStruct createAddressStruct({
  String? houseNumber,
  String? street,
  String? barangay,
  String? city,
  String? province,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AddressStruct(
      houseNumber: houseNumber,
      street: street,
      barangay: barangay,
      city: city,
      province: province,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AddressStruct? updateAddressStruct(
  AddressStruct? address, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    address
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAddressStructData(
  Map<String, dynamic> firestoreData,
  AddressStruct? address,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (address == null) {
    return;
  }
  if (address.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && address.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final addressData = getAddressFirestoreData(address, forFieldValue);
  final nestedData = addressData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = address.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAddressFirestoreData(
  AddressStruct? address, [
  bool forFieldValue = false,
]) {
  if (address == null) {
    return {};
  }
  final firestoreData = mapToFirestore(address.toMap());

  // Add any Firestore field values
  address.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAddressListFirestoreData(
  List<AddressStruct>? addresss,
) =>
    addresss?.map((e) => getAddressFirestoreData(e, true)).toList() ?? [];
