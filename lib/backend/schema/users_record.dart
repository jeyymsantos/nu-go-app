import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

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
  StudentStruct? _student;
  StudentStruct get student => _student ?? StudentStruct();
  bool hasStudent() => _student != null;

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
    _student = StudentStruct.maybeFromMap(snapshotData['student']);
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
  StudentStruct? student,
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
      'student': StudentStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "address" field.
  addAddressStructData(firestoreData, address, 'address');

  // Handle nested data for "name" field.
  addNameStructData(firestoreData, name, 'name');

  // Handle nested data for "student" field.
  addStudentStructData(firestoreData, student, 'student');

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
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
        e1?.student == e2?.student;
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
        e?.student
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
