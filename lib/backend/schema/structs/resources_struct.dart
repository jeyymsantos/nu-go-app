// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ResourcesStruct extends FFFirebaseStruct {
  ResourcesStruct({
    String? studentHandbook,
    String? scholarshipHandbook,
    String? registrarManual,
    String? csg,
    String? academicCalendar,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _studentHandbook = studentHandbook,
        _scholarshipHandbook = scholarshipHandbook,
        _registrarManual = registrarManual,
        _csg = csg,
        _academicCalendar = academicCalendar,
        super(firestoreUtilData);

  // "student_handbook" field.
  String? _studentHandbook;
  String get studentHandbook => _studentHandbook ?? '';
  set studentHandbook(String? val) => _studentHandbook = val;

  bool hasStudentHandbook() => _studentHandbook != null;

  // "scholarship_handbook" field.
  String? _scholarshipHandbook;
  String get scholarshipHandbook => _scholarshipHandbook ?? '';
  set scholarshipHandbook(String? val) => _scholarshipHandbook = val;

  bool hasScholarshipHandbook() => _scholarshipHandbook != null;

  // "registrar_manual" field.
  String? _registrarManual;
  String get registrarManual => _registrarManual ?? '';
  set registrarManual(String? val) => _registrarManual = val;

  bool hasRegistrarManual() => _registrarManual != null;

  // "csg" field.
  String? _csg;
  String get csg => _csg ?? '';
  set csg(String? val) => _csg = val;

  bool hasCsg() => _csg != null;

  // "academic_calendar" field.
  String? _academicCalendar;
  String get academicCalendar => _academicCalendar ?? '';
  set academicCalendar(String? val) => _academicCalendar = val;

  bool hasAcademicCalendar() => _academicCalendar != null;

  static ResourcesStruct fromMap(Map<String, dynamic> data) => ResourcesStruct(
        studentHandbook: data['student_handbook'] as String?,
        scholarshipHandbook: data['scholarship_handbook'] as String?,
        registrarManual: data['registrar_manual'] as String?,
        csg: data['csg'] as String?,
        academicCalendar: data['academic_calendar'] as String?,
      );

  static ResourcesStruct? maybeFromMap(dynamic data) => data is Map
      ? ResourcesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'student_handbook': _studentHandbook,
        'scholarship_handbook': _scholarshipHandbook,
        'registrar_manual': _registrarManual,
        'csg': _csg,
        'academic_calendar': _academicCalendar,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'student_handbook': serializeParam(
          _studentHandbook,
          ParamType.String,
        ),
        'scholarship_handbook': serializeParam(
          _scholarshipHandbook,
          ParamType.String,
        ),
        'registrar_manual': serializeParam(
          _registrarManual,
          ParamType.String,
        ),
        'csg': serializeParam(
          _csg,
          ParamType.String,
        ),
        'academic_calendar': serializeParam(
          _academicCalendar,
          ParamType.String,
        ),
      }.withoutNulls;

  static ResourcesStruct fromSerializableMap(Map<String, dynamic> data) =>
      ResourcesStruct(
        studentHandbook: deserializeParam(
          data['student_handbook'],
          ParamType.String,
          false,
        ),
        scholarshipHandbook: deserializeParam(
          data['scholarship_handbook'],
          ParamType.String,
          false,
        ),
        registrarManual: deserializeParam(
          data['registrar_manual'],
          ParamType.String,
          false,
        ),
        csg: deserializeParam(
          data['csg'],
          ParamType.String,
          false,
        ),
        academicCalendar: deserializeParam(
          data['academic_calendar'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ResourcesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ResourcesStruct &&
        studentHandbook == other.studentHandbook &&
        scholarshipHandbook == other.scholarshipHandbook &&
        registrarManual == other.registrarManual &&
        csg == other.csg &&
        academicCalendar == other.academicCalendar;
  }

  @override
  int get hashCode => const ListEquality().hash([
        studentHandbook,
        scholarshipHandbook,
        registrarManual,
        csg,
        academicCalendar
      ]);
}

ResourcesStruct createResourcesStruct({
  String? studentHandbook,
  String? scholarshipHandbook,
  String? registrarManual,
  String? csg,
  String? academicCalendar,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ResourcesStruct(
      studentHandbook: studentHandbook,
      scholarshipHandbook: scholarshipHandbook,
      registrarManual: registrarManual,
      csg: csg,
      academicCalendar: academicCalendar,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ResourcesStruct? updateResourcesStruct(
  ResourcesStruct? resources, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    resources
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addResourcesStructData(
  Map<String, dynamic> firestoreData,
  ResourcesStruct? resources,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (resources == null) {
    return;
  }
  if (resources.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && resources.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final resourcesData = getResourcesFirestoreData(resources, forFieldValue);
  final nestedData = resourcesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = resources.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getResourcesFirestoreData(
  ResourcesStruct? resources, [
  bool forFieldValue = false,
]) {
  if (resources == null) {
    return {};
  }
  final firestoreData = mapToFirestore(resources.toMap());

  // Add any Firestore field values
  resources.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getResourcesListFirestoreData(
  List<ResourcesStruct>? resourcess,
) =>
    resourcess?.map((e) => getResourcesFirestoreData(e, true)).toList() ?? [];
