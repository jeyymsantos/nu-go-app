// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class NameStruct extends FFFirebaseStruct {
  NameStruct({
    String? firstName,
    String? middleName,
    String? lastName,
    String? suffixName,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _firstName = firstName,
        _middleName = middleName,
        _lastName = lastName,
        _suffixName = suffixName,
        super(firestoreUtilData);

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;
  bool hasFirstName() => _firstName != null;

  // "middle_name" field.
  String? _middleName;
  String get middleName => _middleName ?? '';
  set middleName(String? val) => _middleName = val;
  bool hasMiddleName() => _middleName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;
  bool hasLastName() => _lastName != null;

  // "suffix_name" field.
  String? _suffixName;
  String get suffixName => _suffixName ?? '';
  set suffixName(String? val) => _suffixName = val;
  bool hasSuffixName() => _suffixName != null;

  static NameStruct fromMap(Map<String, dynamic> data) => NameStruct(
        firstName: data['first_name'] as String?,
        middleName: data['middle_name'] as String?,
        lastName: data['last_name'] as String?,
        suffixName: data['suffix_name'] as String?,
      );

  static NameStruct? maybeFromMap(dynamic data) =>
      data is Map ? NameStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'first_name': _firstName,
        'middle_name': _middleName,
        'last_name': _lastName,
        'suffix_name': _suffixName,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'first_name': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'middle_name': serializeParam(
          _middleName,
          ParamType.String,
        ),
        'last_name': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'suffix_name': serializeParam(
          _suffixName,
          ParamType.String,
        ),
      }.withoutNulls;

  static NameStruct fromSerializableMap(Map<String, dynamic> data) =>
      NameStruct(
        firstName: deserializeParam(
          data['first_name'],
          ParamType.String,
          false,
        ),
        middleName: deserializeParam(
          data['middle_name'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['last_name'],
          ParamType.String,
          false,
        ),
        suffixName: deserializeParam(
          data['suffix_name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'NameStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NameStruct &&
        firstName == other.firstName &&
        middleName == other.middleName &&
        lastName == other.lastName &&
        suffixName == other.suffixName;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([firstName, middleName, lastName, suffixName]);
}

NameStruct createNameStruct({
  String? firstName,
  String? middleName,
  String? lastName,
  String? suffixName,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    NameStruct(
      firstName: firstName,
      middleName: middleName,
      lastName: lastName,
      suffixName: suffixName,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

NameStruct? updateNameStruct(
  NameStruct? name, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    name
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addNameStructData(
  Map<String, dynamic> firestoreData,
  NameStruct? name,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (name == null) {
    return;
  }
  if (name.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && name.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final nameData = getNameFirestoreData(name, forFieldValue);
  final nestedData = nameData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = name.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getNameFirestoreData(
  NameStruct? name, [
  bool forFieldValue = false,
]) {
  if (name == null) {
    return {};
  }
  final firestoreData = mapToFirestore(name.toMap());

  // Add any Firestore field values
  name.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getNameListFirestoreData(
  List<NameStruct>? names,
) =>
    names?.map((e) => getNameFirestoreData(e, true)).toList() ?? [];
