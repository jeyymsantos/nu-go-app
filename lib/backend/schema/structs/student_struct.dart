// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class StudentStruct extends FFFirebaseStruct {
  StudentStruct({
    String? studentId,
    String? school,
    String? program,
    String? section,
    String? studentBio,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _studentId = studentId,
        _school = school,
        _program = program,
        _section = section,
        _studentBio = studentBio,
        super(firestoreUtilData);

  // "student_id" field.
  String? _studentId;
  String get studentId => _studentId ?? '';
  set studentId(String? val) => _studentId = val;
  bool hasStudentId() => _studentId != null;

  // "school" field.
  String? _school;
  String get school => _school ?? '';
  set school(String? val) => _school = val;
  bool hasSchool() => _school != null;

  // "program" field.
  String? _program;
  String get program => _program ?? '';
  set program(String? val) => _program = val;
  bool hasProgram() => _program != null;

  // "section" field.
  String? _section;
  String get section => _section ?? '';
  set section(String? val) => _section = val;
  bool hasSection() => _section != null;

  // "student_bio" field.
  String? _studentBio;
  String get studentBio => _studentBio ?? '';
  set studentBio(String? val) => _studentBio = val;
  bool hasStudentBio() => _studentBio != null;

  static StudentStruct fromMap(Map<String, dynamic> data) => StudentStruct(
        studentId: data['student_id'] as String?,
        school: data['school'] as String?,
        program: data['program'] as String?,
        section: data['section'] as String?,
        studentBio: data['student_bio'] as String?,
      );

  static StudentStruct? maybeFromMap(dynamic data) =>
      data is Map ? StudentStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'student_id': _studentId,
        'school': _school,
        'program': _program,
        'section': _section,
        'student_bio': _studentBio,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'student_id': serializeParam(
          _studentId,
          ParamType.String,
        ),
        'school': serializeParam(
          _school,
          ParamType.String,
        ),
        'program': serializeParam(
          _program,
          ParamType.String,
        ),
        'section': serializeParam(
          _section,
          ParamType.String,
        ),
        'student_bio': serializeParam(
          _studentBio,
          ParamType.String,
        ),
      }.withoutNulls;

  static StudentStruct fromSerializableMap(Map<String, dynamic> data) =>
      StudentStruct(
        studentId: deserializeParam(
          data['student_id'],
          ParamType.String,
          false,
        ),
        school: deserializeParam(
          data['school'],
          ParamType.String,
          false,
        ),
        program: deserializeParam(
          data['program'],
          ParamType.String,
          false,
        ),
        section: deserializeParam(
          data['section'],
          ParamType.String,
          false,
        ),
        studentBio: deserializeParam(
          data['student_bio'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'StudentStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StudentStruct &&
        studentId == other.studentId &&
        school == other.school &&
        program == other.program &&
        section == other.section &&
        studentBio == other.studentBio;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([studentId, school, program, section, studentBio]);
}

StudentStruct createStudentStruct({
  String? studentId,
  String? school,
  String? program,
  String? section,
  String? studentBio,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    StudentStruct(
      studentId: studentId,
      school: school,
      program: program,
      section: section,
      studentBio: studentBio,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

StudentStruct? updateStudentStruct(
  StudentStruct? student, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    student
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addStudentStructData(
  Map<String, dynamic> firestoreData,
  StudentStruct? student,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (student == null) {
    return;
  }
  if (student.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && student.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final studentData = getStudentFirestoreData(student, forFieldValue);
  final nestedData = studentData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = student.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getStudentFirestoreData(
  StudentStruct? student, [
  bool forFieldValue = false,
]) {
  if (student == null) {
    return {};
  }
  final firestoreData = mapToFirestore(student.toMap());

  // Add any Firestore field values
  student.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getStudentListFirestoreData(
  List<StudentStruct>? students,
) =>
    students?.map((e) => getStudentFirestoreData(e, true)).toList() ?? [];
