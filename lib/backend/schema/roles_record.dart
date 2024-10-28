import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RolesRecord extends FirestoreRecord {
  RolesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "role_name" field.
  String? _roleName;
  String get roleName => _roleName ?? '';
  bool hasRoleName() => _roleName != null;

  // "role_description" field.
  String? _roleDescription;
  String get roleDescription => _roleDescription ?? '';
  bool hasRoleDescription() => _roleDescription != null;

  // "role_created_by" field.
  DocumentReference? _roleCreatedBy;
  DocumentReference? get roleCreatedBy => _roleCreatedBy;
  bool hasRoleCreatedBy() => _roleCreatedBy != null;

  // "role_created_on" field.
  DateTime? _roleCreatedOn;
  DateTime? get roleCreatedOn => _roleCreatedOn;
  bool hasRoleCreatedOn() => _roleCreatedOn != null;

  // "role_nickname" field.
  String? _roleNickname;
  String get roleNickname => _roleNickname ?? '';
  bool hasRoleNickname() => _roleNickname != null;

  // "role_access" field.
  UserSettingsStruct? _roleAccess;
  UserSettingsStruct get roleAccess => _roleAccess ?? UserSettingsStruct();
  bool hasRoleAccess() => _roleAccess != null;

  void _initializeFields() {
    _roleName = snapshotData['role_name'] as String?;
    _roleDescription = snapshotData['role_description'] as String?;
    _roleCreatedBy = snapshotData['role_created_by'] as DocumentReference?;
    _roleCreatedOn = snapshotData['role_created_on'] as DateTime?;
    _roleNickname = snapshotData['role_nickname'] as String?;
    _roleAccess = UserSettingsStruct.maybeFromMap(snapshotData['role_access']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('roles');

  static Stream<RolesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RolesRecord.fromSnapshot(s));

  static Future<RolesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RolesRecord.fromSnapshot(s));

  static RolesRecord fromSnapshot(DocumentSnapshot snapshot) => RolesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RolesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RolesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RolesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RolesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRolesRecordData({
  String? roleName,
  String? roleDescription,
  DocumentReference? roleCreatedBy,
  DateTime? roleCreatedOn,
  String? roleNickname,
  UserSettingsStruct? roleAccess,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'role_name': roleName,
      'role_description': roleDescription,
      'role_created_by': roleCreatedBy,
      'role_created_on': roleCreatedOn,
      'role_nickname': roleNickname,
      'role_access': UserSettingsStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "role_access" field.
  addUserSettingsStructData(firestoreData, roleAccess, 'role_access');

  return firestoreData;
}

class RolesRecordDocumentEquality implements Equality<RolesRecord> {
  const RolesRecordDocumentEquality();

  @override
  bool equals(RolesRecord? e1, RolesRecord? e2) {
    return e1?.roleName == e2?.roleName &&
        e1?.roleDescription == e2?.roleDescription &&
        e1?.roleCreatedBy == e2?.roleCreatedBy &&
        e1?.roleCreatedOn == e2?.roleCreatedOn &&
        e1?.roleNickname == e2?.roleNickname &&
        e1?.roleAccess == e2?.roleAccess;
  }

  @override
  int hash(RolesRecord? e) => const ListEquality().hash([
        e?.roleName,
        e?.roleDescription,
        e?.roleCreatedBy,
        e?.roleCreatedOn,
        e?.roleNickname,
        e?.roleAccess
      ]);

  @override
  bool isValidKey(Object? o) => o is RolesRecord;
}
