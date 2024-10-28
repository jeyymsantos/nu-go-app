import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "civil_status" field.
  String? _civilStatus;
  String get civilStatus => _civilStatus ?? '';
  bool hasCivilStatus() => _civilStatus != null;

  // "sex" field.
  String? _sex;
  String get sex => _sex ?? '';
  bool hasSex() => _sex != null;

  // "birth_date" field.
  DateTime? _birthDate;
  DateTime? get birthDate => _birthDate;
  bool hasBirthDate() => _birthDate != null;

  // "citizenship" field.
  String? _citizenship;
  String get citizenship => _citizenship ?? '';
  bool hasCitizenship() => _citizenship != null;

  // "religion" field.
  String? _religion;
  String get religion => _religion ?? '';
  bool hasReligion() => _religion != null;

  // "address" field.
  AddressStruct? _address;
  AddressStruct get address => _address ?? AddressStruct();
  bool hasAddress() => _address != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "name" field.
  NameStruct? _name;
  NameStruct get name => _name ?? NameStruct();
  bool hasName() => _name != null;

  // "onboarding" field.
  bool? _onboarding;
  bool get onboarding => _onboarding ?? false;
  bool hasOnboarding() => _onboarding != null;

  // "student" field.
  SchoolProgramDetailsStruct? _student;
  SchoolProgramDetailsStruct get student =>
      _student ?? SchoolProgramDetailsStruct();
  bool hasStudent() => _student != null;

  // "email_type" field.
  String? _emailType;
  String get emailType => _emailType ?? '';
  bool hasEmailType() => _emailType != null;

  // "settings" field.
  UserSettingsStruct? _settings;
  UserSettingsStruct get settings => _settings ?? UserSettingsStruct();
  bool hasSettings() => _settings != null;

  // "orgs_member" field.
  List<DocumentReference>? _orgsMember;
  List<DocumentReference> get orgsMember => _orgsMember ?? const [];
  bool hasOrgsMember() => _orgsMember != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "id_number" field.
  String? _idNumber;
  String get idNumber => _idNumber ?? '';
  bool hasIdNumber() => _idNumber != null;

  // "bio_note" field.
  String? _bioNote;
  String get bioNote => _bioNote ?? '';
  bool hasBioNote() => _bioNote != null;

  // "last_notification_read_time" field.
  DateTime? _lastNotificationReadTime;
  DateTime? get lastNotificationReadTime => _lastNotificationReadTime;
  bool hasLastNotificationReadTime() => _lastNotificationReadTime != null;

  // "nfc_tag" field.
  String? _nfcTag;
  String get nfcTag => _nfcTag ?? '';
  bool hasNfcTag() => _nfcTag != null;

  // "nfc_e_signature" field.
  String? _nfcESignature;
  String get nfcESignature => _nfcESignature ?? '';
  bool hasNfcESignature() => _nfcESignature != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _civilStatus = snapshotData['civil_status'] as String?;
    _sex = snapshotData['sex'] as String?;
    _birthDate = snapshotData['birth_date'] as DateTime?;
    _citizenship = snapshotData['citizenship'] as String?;
    _religion = snapshotData['religion'] as String?;
    _address = AddressStruct.maybeFromMap(snapshotData['address']);
    _displayName = snapshotData['display_name'] as String?;
    _name = NameStruct.maybeFromMap(snapshotData['name']);
    _onboarding = snapshotData['onboarding'] as bool?;
    _student = SchoolProgramDetailsStruct.maybeFromMap(snapshotData['student']);
    _emailType = snapshotData['email_type'] as String?;
    _settings = UserSettingsStruct.maybeFromMap(snapshotData['settings']);
    _orgsMember = getDataList(snapshotData['orgs_member']);
    _role = snapshotData['role'] as String?;
    _idNumber = snapshotData['id_number'] as String?;
    _bioNote = snapshotData['bio_note'] as String?;
    _lastNotificationReadTime =
        snapshotData['last_notification_read_time'] as DateTime?;
    _nfcTag = snapshotData['nfc_tag'] as String?;
    _nfcESignature = snapshotData['nfc_e_signature'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? civilStatus,
  String? sex,
  DateTime? birthDate,
  String? citizenship,
  String? religion,
  AddressStruct? address,
  String? displayName,
  NameStruct? name,
  bool? onboarding,
  SchoolProgramDetailsStruct? student,
  String? emailType,
  UserSettingsStruct? settings,
  String? role,
  String? idNumber,
  String? bioNote,
  DateTime? lastNotificationReadTime,
  String? nfcTag,
  String? nfcESignature,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'civil_status': civilStatus,
      'sex': sex,
      'birth_date': birthDate,
      'citizenship': citizenship,
      'religion': religion,
      'address': AddressStruct().toMap(),
      'display_name': displayName,
      'name': NameStruct().toMap(),
      'onboarding': onboarding,
      'student': SchoolProgramDetailsStruct().toMap(),
      'email_type': emailType,
      'settings': UserSettingsStruct().toMap(),
      'role': role,
      'id_number': idNumber,
      'bio_note': bioNote,
      'last_notification_read_time': lastNotificationReadTime,
      'nfc_tag': nfcTag,
      'nfc_e_signature': nfcESignature,
    }.withoutNulls,
  );

  // Handle nested data for "address" field.
  addAddressStructData(firestoreData, address, 'address');

  // Handle nested data for "name" field.
  addNameStructData(firestoreData, name, 'name');

  // Handle nested data for "student" field.
  addSchoolProgramDetailsStructData(firestoreData, student, 'student');

  // Handle nested data for "settings" field.
  addUserSettingsStructData(firestoreData, settings, 'settings');

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.civilStatus == e2?.civilStatus &&
        e1?.sex == e2?.sex &&
        e1?.birthDate == e2?.birthDate &&
        e1?.citizenship == e2?.citizenship &&
        e1?.religion == e2?.religion &&
        e1?.address == e2?.address &&
        e1?.displayName == e2?.displayName &&
        e1?.name == e2?.name &&
        e1?.onboarding == e2?.onboarding &&
        e1?.student == e2?.student &&
        e1?.emailType == e2?.emailType &&
        e1?.settings == e2?.settings &&
        listEquality.equals(e1?.orgsMember, e2?.orgsMember) &&
        e1?.role == e2?.role &&
        e1?.idNumber == e2?.idNumber &&
        e1?.bioNote == e2?.bioNote &&
        e1?.lastNotificationReadTime == e2?.lastNotificationReadTime &&
        e1?.nfcTag == e2?.nfcTag &&
        e1?.nfcESignature == e2?.nfcESignature;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.civilStatus,
        e?.sex,
        e?.birthDate,
        e?.citizenship,
        e?.religion,
        e?.address,
        e?.displayName,
        e?.name,
        e?.onboarding,
        e?.student,
        e?.emailType,
        e?.settings,
        e?.orgsMember,
        e?.role,
        e?.idNumber,
        e?.bioNote,
        e?.lastNotificationReadTime,
        e?.nfcTag,
        e?.nfcESignature
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
