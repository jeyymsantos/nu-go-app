// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserSettingsStruct extends FFFirebaseStruct {
  UserSettingsStruct({
    bool? isDeactivated,
    bool? isSuperAdmin,
    bool? isVerified,
    bool? toApprovalManagement,
    bool? toContentManagement,
    bool? toFeedbackManagement,
    bool? toFileMaintenance,
    bool? toLogsManagement,
    bool? toMaintenanceManagement,
    bool? toOrganizationManagement,
    bool? toPushNotificiationManamgement,
    bool? toResourcesManagement,
    bool? toUserManagement,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _isDeactivated = isDeactivated,
        _isSuperAdmin = isSuperAdmin,
        _isVerified = isVerified,
        _toApprovalManagement = toApprovalManagement,
        _toContentManagement = toContentManagement,
        _toFeedbackManagement = toFeedbackManagement,
        _toFileMaintenance = toFileMaintenance,
        _toLogsManagement = toLogsManagement,
        _toMaintenanceManagement = toMaintenanceManagement,
        _toOrganizationManagement = toOrganizationManagement,
        _toPushNotificiationManamgement = toPushNotificiationManamgement,
        _toResourcesManagement = toResourcesManagement,
        _toUserManagement = toUserManagement,
        super(firestoreUtilData);

  // "isDeactivated" field.
  bool? _isDeactivated;
  bool get isDeactivated => _isDeactivated ?? false;
  set isDeactivated(bool? val) => _isDeactivated = val;

  bool hasIsDeactivated() => _isDeactivated != null;

  // "isSuperAdmin" field.
  bool? _isSuperAdmin;
  bool get isSuperAdmin => _isSuperAdmin ?? false;
  set isSuperAdmin(bool? val) => _isSuperAdmin = val;

  bool hasIsSuperAdmin() => _isSuperAdmin != null;

  // "isVerified" field.
  bool? _isVerified;
  bool get isVerified => _isVerified ?? false;
  set isVerified(bool? val) => _isVerified = val;

  bool hasIsVerified() => _isVerified != null;

  // "toApprovalManagement" field.
  bool? _toApprovalManagement;
  bool get toApprovalManagement => _toApprovalManagement ?? false;
  set toApprovalManagement(bool? val) => _toApprovalManagement = val;

  bool hasToApprovalManagement() => _toApprovalManagement != null;

  // "toContentManagement" field.
  bool? _toContentManagement;
  bool get toContentManagement => _toContentManagement ?? false;
  set toContentManagement(bool? val) => _toContentManagement = val;

  bool hasToContentManagement() => _toContentManagement != null;

  // "toFeedbackManagement" field.
  bool? _toFeedbackManagement;
  bool get toFeedbackManagement => _toFeedbackManagement ?? false;
  set toFeedbackManagement(bool? val) => _toFeedbackManagement = val;

  bool hasToFeedbackManagement() => _toFeedbackManagement != null;

  // "toFileMaintenance" field.
  bool? _toFileMaintenance;
  bool get toFileMaintenance => _toFileMaintenance ?? false;
  set toFileMaintenance(bool? val) => _toFileMaintenance = val;

  bool hasToFileMaintenance() => _toFileMaintenance != null;

  // "toLogsManagement" field.
  bool? _toLogsManagement;
  bool get toLogsManagement => _toLogsManagement ?? false;
  set toLogsManagement(bool? val) => _toLogsManagement = val;

  bool hasToLogsManagement() => _toLogsManagement != null;

  // "toMaintenanceManagement" field.
  bool? _toMaintenanceManagement;
  bool get toMaintenanceManagement => _toMaintenanceManagement ?? false;
  set toMaintenanceManagement(bool? val) => _toMaintenanceManagement = val;

  bool hasToMaintenanceManagement() => _toMaintenanceManagement != null;

  // "toOrganizationManagement" field.
  bool? _toOrganizationManagement;
  bool get toOrganizationManagement => _toOrganizationManagement ?? false;
  set toOrganizationManagement(bool? val) => _toOrganizationManagement = val;

  bool hasToOrganizationManagement() => _toOrganizationManagement != null;

  // "toPushNotificiationManamgement" field.
  bool? _toPushNotificiationManamgement;
  bool get toPushNotificiationManamgement =>
      _toPushNotificiationManamgement ?? false;
  set toPushNotificiationManamgement(bool? val) =>
      _toPushNotificiationManamgement = val;

  bool hasToPushNotificiationManamgement() =>
      _toPushNotificiationManamgement != null;

  // "toResourcesManagement" field.
  bool? _toResourcesManagement;
  bool get toResourcesManagement => _toResourcesManagement ?? false;
  set toResourcesManagement(bool? val) => _toResourcesManagement = val;

  bool hasToResourcesManagement() => _toResourcesManagement != null;

  // "toUserManagement" field.
  bool? _toUserManagement;
  bool get toUserManagement => _toUserManagement ?? false;
  set toUserManagement(bool? val) => _toUserManagement = val;

  bool hasToUserManagement() => _toUserManagement != null;

  static UserSettingsStruct fromMap(Map<String, dynamic> data) =>
      UserSettingsStruct(
        isDeactivated: data['isDeactivated'] as bool?,
        isSuperAdmin: data['isSuperAdmin'] as bool?,
        isVerified: data['isVerified'] as bool?,
        toApprovalManagement: data['toApprovalManagement'] as bool?,
        toContentManagement: data['toContentManagement'] as bool?,
        toFeedbackManagement: data['toFeedbackManagement'] as bool?,
        toFileMaintenance: data['toFileMaintenance'] as bool?,
        toLogsManagement: data['toLogsManagement'] as bool?,
        toMaintenanceManagement: data['toMaintenanceManagement'] as bool?,
        toOrganizationManagement: data['toOrganizationManagement'] as bool?,
        toPushNotificiationManamgement:
            data['toPushNotificiationManamgement'] as bool?,
        toResourcesManagement: data['toResourcesManagement'] as bool?,
        toUserManagement: data['toUserManagement'] as bool?,
      );

  static UserSettingsStruct? maybeFromMap(dynamic data) => data is Map
      ? UserSettingsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'isDeactivated': _isDeactivated,
        'isSuperAdmin': _isSuperAdmin,
        'isVerified': _isVerified,
        'toApprovalManagement': _toApprovalManagement,
        'toContentManagement': _toContentManagement,
        'toFeedbackManagement': _toFeedbackManagement,
        'toFileMaintenance': _toFileMaintenance,
        'toLogsManagement': _toLogsManagement,
        'toMaintenanceManagement': _toMaintenanceManagement,
        'toOrganizationManagement': _toOrganizationManagement,
        'toPushNotificiationManamgement': _toPushNotificiationManamgement,
        'toResourcesManagement': _toResourcesManagement,
        'toUserManagement': _toUserManagement,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'isDeactivated': serializeParam(
          _isDeactivated,
          ParamType.bool,
        ),
        'isSuperAdmin': serializeParam(
          _isSuperAdmin,
          ParamType.bool,
        ),
        'isVerified': serializeParam(
          _isVerified,
          ParamType.bool,
        ),
        'toApprovalManagement': serializeParam(
          _toApprovalManagement,
          ParamType.bool,
        ),
        'toContentManagement': serializeParam(
          _toContentManagement,
          ParamType.bool,
        ),
        'toFeedbackManagement': serializeParam(
          _toFeedbackManagement,
          ParamType.bool,
        ),
        'toFileMaintenance': serializeParam(
          _toFileMaintenance,
          ParamType.bool,
        ),
        'toLogsManagement': serializeParam(
          _toLogsManagement,
          ParamType.bool,
        ),
        'toMaintenanceManagement': serializeParam(
          _toMaintenanceManagement,
          ParamType.bool,
        ),
        'toOrganizationManagement': serializeParam(
          _toOrganizationManagement,
          ParamType.bool,
        ),
        'toPushNotificiationManamgement': serializeParam(
          _toPushNotificiationManamgement,
          ParamType.bool,
        ),
        'toResourcesManagement': serializeParam(
          _toResourcesManagement,
          ParamType.bool,
        ),
        'toUserManagement': serializeParam(
          _toUserManagement,
          ParamType.bool,
        ),
      }.withoutNulls;

  static UserSettingsStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserSettingsStruct(
        isDeactivated: deserializeParam(
          data['isDeactivated'],
          ParamType.bool,
          false,
        ),
        isSuperAdmin: deserializeParam(
          data['isSuperAdmin'],
          ParamType.bool,
          false,
        ),
        isVerified: deserializeParam(
          data['isVerified'],
          ParamType.bool,
          false,
        ),
        toApprovalManagement: deserializeParam(
          data['toApprovalManagement'],
          ParamType.bool,
          false,
        ),
        toContentManagement: deserializeParam(
          data['toContentManagement'],
          ParamType.bool,
          false,
        ),
        toFeedbackManagement: deserializeParam(
          data['toFeedbackManagement'],
          ParamType.bool,
          false,
        ),
        toFileMaintenance: deserializeParam(
          data['toFileMaintenance'],
          ParamType.bool,
          false,
        ),
        toLogsManagement: deserializeParam(
          data['toLogsManagement'],
          ParamType.bool,
          false,
        ),
        toMaintenanceManagement: deserializeParam(
          data['toMaintenanceManagement'],
          ParamType.bool,
          false,
        ),
        toOrganizationManagement: deserializeParam(
          data['toOrganizationManagement'],
          ParamType.bool,
          false,
        ),
        toPushNotificiationManamgement: deserializeParam(
          data['toPushNotificiationManamgement'],
          ParamType.bool,
          false,
        ),
        toResourcesManagement: deserializeParam(
          data['toResourcesManagement'],
          ParamType.bool,
          false,
        ),
        toUserManagement: deserializeParam(
          data['toUserManagement'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'UserSettingsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserSettingsStruct &&
        isDeactivated == other.isDeactivated &&
        isSuperAdmin == other.isSuperAdmin &&
        isVerified == other.isVerified &&
        toApprovalManagement == other.toApprovalManagement &&
        toContentManagement == other.toContentManagement &&
        toFeedbackManagement == other.toFeedbackManagement &&
        toFileMaintenance == other.toFileMaintenance &&
        toLogsManagement == other.toLogsManagement &&
        toMaintenanceManagement == other.toMaintenanceManagement &&
        toOrganizationManagement == other.toOrganizationManagement &&
        toPushNotificiationManamgement ==
            other.toPushNotificiationManamgement &&
        toResourcesManagement == other.toResourcesManagement &&
        toUserManagement == other.toUserManagement;
  }

  @override
  int get hashCode => const ListEquality().hash([
        isDeactivated,
        isSuperAdmin,
        isVerified,
        toApprovalManagement,
        toContentManagement,
        toFeedbackManagement,
        toFileMaintenance,
        toLogsManagement,
        toMaintenanceManagement,
        toOrganizationManagement,
        toPushNotificiationManamgement,
        toResourcesManagement,
        toUserManagement
      ]);
}

UserSettingsStruct createUserSettingsStruct({
  bool? isDeactivated,
  bool? isSuperAdmin,
  bool? isVerified,
  bool? toApprovalManagement,
  bool? toContentManagement,
  bool? toFeedbackManagement,
  bool? toFileMaintenance,
  bool? toLogsManagement,
  bool? toMaintenanceManagement,
  bool? toOrganizationManagement,
  bool? toPushNotificiationManamgement,
  bool? toResourcesManagement,
  bool? toUserManagement,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserSettingsStruct(
      isDeactivated: isDeactivated,
      isSuperAdmin: isSuperAdmin,
      isVerified: isVerified,
      toApprovalManagement: toApprovalManagement,
      toContentManagement: toContentManagement,
      toFeedbackManagement: toFeedbackManagement,
      toFileMaintenance: toFileMaintenance,
      toLogsManagement: toLogsManagement,
      toMaintenanceManagement: toMaintenanceManagement,
      toOrganizationManagement: toOrganizationManagement,
      toPushNotificiationManamgement: toPushNotificiationManamgement,
      toResourcesManagement: toResourcesManagement,
      toUserManagement: toUserManagement,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserSettingsStruct? updateUserSettingsStruct(
  UserSettingsStruct? userSettings, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userSettings
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserSettingsStructData(
  Map<String, dynamic> firestoreData,
  UserSettingsStruct? userSettings,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userSettings == null) {
    return;
  }
  if (userSettings.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userSettings.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userSettingsData =
      getUserSettingsFirestoreData(userSettings, forFieldValue);
  final nestedData =
      userSettingsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = userSettings.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserSettingsFirestoreData(
  UserSettingsStruct? userSettings, [
  bool forFieldValue = false,
]) {
  if (userSettings == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userSettings.toMap());

  // Add any Firestore field values
  userSettings.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserSettingsListFirestoreData(
  List<UserSettingsStruct>? userSettingss,
) =>
    userSettingss?.map((e) => getUserSettingsFirestoreData(e, true)).toList() ??
    [];
