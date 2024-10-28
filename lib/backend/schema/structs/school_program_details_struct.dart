// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class SchoolProgramDetailsStruct extends FFFirebaseStruct {
  SchoolProgramDetailsStruct({
    String? section,
    DocumentReference? school,
    DocumentReference? program,
    String? honorifics,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _section = section,
        _school = school,
        _program = program,
        _honorifics = honorifics,
        super(firestoreUtilData);

  // "section" field.
  String? _section;
  String get section => _section ?? '';
  set section(String? val) => _section = val;

  bool hasSection() => _section != null;

  // "school" field.
  DocumentReference? _school;
  DocumentReference? get school => _school;
  set school(DocumentReference? val) => _school = val;

  bool hasSchool() => _school != null;

  // "program" field.
  DocumentReference? _program;
  DocumentReference? get program => _program;
  set program(DocumentReference? val) => _program = val;

  bool hasProgram() => _program != null;

  // "honorifics" field.
  String? _honorifics;
  String get honorifics => _honorifics ?? '';
  set honorifics(String? val) => _honorifics = val;

  bool hasHonorifics() => _honorifics != null;

  static SchoolProgramDetailsStruct fromMap(Map<String, dynamic> data) =>
      SchoolProgramDetailsStruct(
        section: data['section'] as String?,
        school: data['school'] as DocumentReference?,
        program: data['program'] as DocumentReference?,
        honorifics: data['honorifics'] as String?,
      );

  static SchoolProgramDetailsStruct? maybeFromMap(dynamic data) => data is Map
      ? SchoolProgramDetailsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'section': _section,
        'school': _school,
        'program': _program,
        'honorifics': _honorifics,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'section': serializeParam(
          _section,
          ParamType.String,
        ),
        'school': serializeParam(
          _school,
          ParamType.DocumentReference,
        ),
        'program': serializeParam(
          _program,
          ParamType.DocumentReference,
        ),
        'honorifics': serializeParam(
          _honorifics,
          ParamType.String,
        ),
      }.withoutNulls;

  static SchoolProgramDetailsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      SchoolProgramDetailsStruct(
        section: deserializeParam(
          data['section'],
          ParamType.String,
          false,
        ),
        school: deserializeParam(
          data['school'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['schools'],
        ),
        program: deserializeParam(
          data['program'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['programs'],
        ),
        honorifics: deserializeParam(
          data['honorifics'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SchoolProgramDetailsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SchoolProgramDetailsStruct &&
        section == other.section &&
        school == other.school &&
        program == other.program &&
        honorifics == other.honorifics;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([section, school, program, honorifics]);
}

SchoolProgramDetailsStruct createSchoolProgramDetailsStruct({
  String? section,
  DocumentReference? school,
  DocumentReference? program,
  String? honorifics,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SchoolProgramDetailsStruct(
      section: section,
      school: school,
      program: program,
      honorifics: honorifics,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SchoolProgramDetailsStruct? updateSchoolProgramDetailsStruct(
  SchoolProgramDetailsStruct? schoolProgramDetails, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    schoolProgramDetails
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSchoolProgramDetailsStructData(
  Map<String, dynamic> firestoreData,
  SchoolProgramDetailsStruct? schoolProgramDetails,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (schoolProgramDetails == null) {
    return;
  }
  if (schoolProgramDetails.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && schoolProgramDetails.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final schoolProgramDetailsData =
      getSchoolProgramDetailsFirestoreData(schoolProgramDetails, forFieldValue);
  final nestedData =
      schoolProgramDetailsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      schoolProgramDetails.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSchoolProgramDetailsFirestoreData(
  SchoolProgramDetailsStruct? schoolProgramDetails, [
  bool forFieldValue = false,
]) {
  if (schoolProgramDetails == null) {
    return {};
  }
  final firestoreData = mapToFirestore(schoolProgramDetails.toMap());

  // Add any Firestore field values
  schoolProgramDetails.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSchoolProgramDetailsListFirestoreData(
  List<SchoolProgramDetailsStruct>? schoolProgramDetailss,
) =>
    schoolProgramDetailss
        ?.map((e) => getSchoolProgramDetailsFirestoreData(e, true))
        .toList() ??
    [];
