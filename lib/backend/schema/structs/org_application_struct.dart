// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class OrgApplicationStruct extends FFFirebaseStruct {
  OrgApplicationStruct({
    int? applicationId,
    String? applicationEventCode,
    DateTime? applicationDate,
    DateTime? applicatonCompleted,
    String? fileIntentAndOfficers,
    String? fileFacultyEndorsement,
    String? fileProjectsAndBudget,
    String? fileConstiAndBylaws,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _applicationId = applicationId,
        _applicationEventCode = applicationEventCode,
        _applicationDate = applicationDate,
        _applicatonCompleted = applicatonCompleted,
        _fileIntentAndOfficers = fileIntentAndOfficers,
        _fileFacultyEndorsement = fileFacultyEndorsement,
        _fileProjectsAndBudget = fileProjectsAndBudget,
        _fileConstiAndBylaws = fileConstiAndBylaws,
        super(firestoreUtilData);

  // "application_id" field.
  int? _applicationId;
  int get applicationId => _applicationId ?? 0;
  set applicationId(int? val) => _applicationId = val;

  void incrementApplicationId(int amount) =>
      applicationId = applicationId + amount;

  bool hasApplicationId() => _applicationId != null;

  // "application_event_code" field.
  String? _applicationEventCode;
  String get applicationEventCode => _applicationEventCode ?? '';
  set applicationEventCode(String? val) => _applicationEventCode = val;

  bool hasApplicationEventCode() => _applicationEventCode != null;

  // "application_date" field.
  DateTime? _applicationDate;
  DateTime? get applicationDate => _applicationDate;
  set applicationDate(DateTime? val) => _applicationDate = val;

  bool hasApplicationDate() => _applicationDate != null;

  // "applicaton_completed" field.
  DateTime? _applicatonCompleted;
  DateTime? get applicatonCompleted => _applicatonCompleted;
  set applicatonCompleted(DateTime? val) => _applicatonCompleted = val;

  bool hasApplicatonCompleted() => _applicatonCompleted != null;

  // "file_intent_and_officers" field.
  String? _fileIntentAndOfficers;
  String get fileIntentAndOfficers => _fileIntentAndOfficers ?? '';
  set fileIntentAndOfficers(String? val) => _fileIntentAndOfficers = val;

  bool hasFileIntentAndOfficers() => _fileIntentAndOfficers != null;

  // "file_faculty_endorsement" field.
  String? _fileFacultyEndorsement;
  String get fileFacultyEndorsement => _fileFacultyEndorsement ?? '';
  set fileFacultyEndorsement(String? val) => _fileFacultyEndorsement = val;

  bool hasFileFacultyEndorsement() => _fileFacultyEndorsement != null;

  // "file_projects_and_budget" field.
  String? _fileProjectsAndBudget;
  String get fileProjectsAndBudget => _fileProjectsAndBudget ?? '';
  set fileProjectsAndBudget(String? val) => _fileProjectsAndBudget = val;

  bool hasFileProjectsAndBudget() => _fileProjectsAndBudget != null;

  // "file_consti_and_bylaws" field.
  String? _fileConstiAndBylaws;
  String get fileConstiAndBylaws => _fileConstiAndBylaws ?? '';
  set fileConstiAndBylaws(String? val) => _fileConstiAndBylaws = val;

  bool hasFileConstiAndBylaws() => _fileConstiAndBylaws != null;

  static OrgApplicationStruct fromMap(Map<String, dynamic> data) =>
      OrgApplicationStruct(
        applicationId: castToType<int>(data['application_id']),
        applicationEventCode: data['application_event_code'] as String?,
        applicationDate: data['application_date'] as DateTime?,
        applicatonCompleted: data['applicaton_completed'] as DateTime?,
        fileIntentAndOfficers: data['file_intent_and_officers'] as String?,
        fileFacultyEndorsement: data['file_faculty_endorsement'] as String?,
        fileProjectsAndBudget: data['file_projects_and_budget'] as String?,
        fileConstiAndBylaws: data['file_consti_and_bylaws'] as String?,
      );

  static OrgApplicationStruct? maybeFromMap(dynamic data) => data is Map
      ? OrgApplicationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'application_id': _applicationId,
        'application_event_code': _applicationEventCode,
        'application_date': _applicationDate,
        'applicaton_completed': _applicatonCompleted,
        'file_intent_and_officers': _fileIntentAndOfficers,
        'file_faculty_endorsement': _fileFacultyEndorsement,
        'file_projects_and_budget': _fileProjectsAndBudget,
        'file_consti_and_bylaws': _fileConstiAndBylaws,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'application_id': serializeParam(
          _applicationId,
          ParamType.int,
        ),
        'application_event_code': serializeParam(
          _applicationEventCode,
          ParamType.String,
        ),
        'application_date': serializeParam(
          _applicationDate,
          ParamType.DateTime,
        ),
        'applicaton_completed': serializeParam(
          _applicatonCompleted,
          ParamType.DateTime,
        ),
        'file_intent_and_officers': serializeParam(
          _fileIntentAndOfficers,
          ParamType.String,
        ),
        'file_faculty_endorsement': serializeParam(
          _fileFacultyEndorsement,
          ParamType.String,
        ),
        'file_projects_and_budget': serializeParam(
          _fileProjectsAndBudget,
          ParamType.String,
        ),
        'file_consti_and_bylaws': serializeParam(
          _fileConstiAndBylaws,
          ParamType.String,
        ),
      }.withoutNulls;

  static OrgApplicationStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrgApplicationStruct(
        applicationId: deserializeParam(
          data['application_id'],
          ParamType.int,
          false,
        ),
        applicationEventCode: deserializeParam(
          data['application_event_code'],
          ParamType.String,
          false,
        ),
        applicationDate: deserializeParam(
          data['application_date'],
          ParamType.DateTime,
          false,
        ),
        applicatonCompleted: deserializeParam(
          data['applicaton_completed'],
          ParamType.DateTime,
          false,
        ),
        fileIntentAndOfficers: deserializeParam(
          data['file_intent_and_officers'],
          ParamType.String,
          false,
        ),
        fileFacultyEndorsement: deserializeParam(
          data['file_faculty_endorsement'],
          ParamType.String,
          false,
        ),
        fileProjectsAndBudget: deserializeParam(
          data['file_projects_and_budget'],
          ParamType.String,
          false,
        ),
        fileConstiAndBylaws: deserializeParam(
          data['file_consti_and_bylaws'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OrgApplicationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrgApplicationStruct &&
        applicationId == other.applicationId &&
        applicationEventCode == other.applicationEventCode &&
        applicationDate == other.applicationDate &&
        applicatonCompleted == other.applicatonCompleted &&
        fileIntentAndOfficers == other.fileIntentAndOfficers &&
        fileFacultyEndorsement == other.fileFacultyEndorsement &&
        fileProjectsAndBudget == other.fileProjectsAndBudget &&
        fileConstiAndBylaws == other.fileConstiAndBylaws;
  }

  @override
  int get hashCode => const ListEquality().hash([
        applicationId,
        applicationEventCode,
        applicationDate,
        applicatonCompleted,
        fileIntentAndOfficers,
        fileFacultyEndorsement,
        fileProjectsAndBudget,
        fileConstiAndBylaws
      ]);
}

OrgApplicationStruct createOrgApplicationStruct({
  int? applicationId,
  String? applicationEventCode,
  DateTime? applicationDate,
  DateTime? applicatonCompleted,
  String? fileIntentAndOfficers,
  String? fileFacultyEndorsement,
  String? fileProjectsAndBudget,
  String? fileConstiAndBylaws,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OrgApplicationStruct(
      applicationId: applicationId,
      applicationEventCode: applicationEventCode,
      applicationDate: applicationDate,
      applicatonCompleted: applicatonCompleted,
      fileIntentAndOfficers: fileIntentAndOfficers,
      fileFacultyEndorsement: fileFacultyEndorsement,
      fileProjectsAndBudget: fileProjectsAndBudget,
      fileConstiAndBylaws: fileConstiAndBylaws,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OrgApplicationStruct? updateOrgApplicationStruct(
  OrgApplicationStruct? orgApplication, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    orgApplication
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOrgApplicationStructData(
  Map<String, dynamic> firestoreData,
  OrgApplicationStruct? orgApplication,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (orgApplication == null) {
    return;
  }
  if (orgApplication.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && orgApplication.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final orgApplicationData =
      getOrgApplicationFirestoreData(orgApplication, forFieldValue);
  final nestedData =
      orgApplicationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = orgApplication.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOrgApplicationFirestoreData(
  OrgApplicationStruct? orgApplication, [
  bool forFieldValue = false,
]) {
  if (orgApplication == null) {
    return {};
  }
  final firestoreData = mapToFirestore(orgApplication.toMap());

  // Add any Firestore field values
  orgApplication.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOrgApplicationListFirestoreData(
  List<OrgApplicationStruct>? orgApplications,
) =>
    orgApplications
        ?.map((e) => getOrgApplicationFirestoreData(e, true))
        .toList() ??
    [];
