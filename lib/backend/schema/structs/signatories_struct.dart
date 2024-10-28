// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SignatoriesStruct extends FFFirebaseStruct {
  SignatoriesStruct({
    String? signatoryLevel,
    DocumentReference? signatoryUser,
    DateTime? adviserDatetime,
    String? adviserFeedback,
    DocumentReference? adviserRef,
    String? adviserStatus,
    DateTime? pcDatetime,
    String? pcFeedback,
    DocumentReference? pcRef,
    String? pcStatus,
    DateTime? deanDatetime,
    String? deanFeedback,
    DocumentReference? deanRef,
    String? deanStatus,
    DateTime? csgDatetime,
    String? csgFeedback,
    DocumentReference? csgRef,
    String? csgStatus,
    DateTime? sdaoDatetime,
    String? sdaoFeedback,
    DocumentReference? sdaoRef,
    String? sdaoStatus,
    DateTime? academicDirectorDatetime,
    String? academicDirectorFeedback,
    DocumentReference? academicDirectorRef,
    String? academicDirectorStatus,
    DateTime? executiveDirectorDatetime,
    String? exeutiveDirectorFeedback,
    DocumentReference? executiveDirectorRef,
    String? executiveDirectorStatus,
    DateTime? fmoDatetime,
    String? fmoFeedback,
    DocumentReference? fmoRef,
    String? fmoStatus,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _signatoryLevel = signatoryLevel,
        _signatoryUser = signatoryUser,
        _adviserDatetime = adviserDatetime,
        _adviserFeedback = adviserFeedback,
        _adviserRef = adviserRef,
        _adviserStatus = adviserStatus,
        _pcDatetime = pcDatetime,
        _pcFeedback = pcFeedback,
        _pcRef = pcRef,
        _pcStatus = pcStatus,
        _deanDatetime = deanDatetime,
        _deanFeedback = deanFeedback,
        _deanRef = deanRef,
        _deanStatus = deanStatus,
        _csgDatetime = csgDatetime,
        _csgFeedback = csgFeedback,
        _csgRef = csgRef,
        _csgStatus = csgStatus,
        _sdaoDatetime = sdaoDatetime,
        _sdaoFeedback = sdaoFeedback,
        _sdaoRef = sdaoRef,
        _sdaoStatus = sdaoStatus,
        _academicDirectorDatetime = academicDirectorDatetime,
        _academicDirectorFeedback = academicDirectorFeedback,
        _academicDirectorRef = academicDirectorRef,
        _academicDirectorStatus = academicDirectorStatus,
        _executiveDirectorDatetime = executiveDirectorDatetime,
        _exeutiveDirectorFeedback = exeutiveDirectorFeedback,
        _executiveDirectorRef = executiveDirectorRef,
        _executiveDirectorStatus = executiveDirectorStatus,
        _fmoDatetime = fmoDatetime,
        _fmoFeedback = fmoFeedback,
        _fmoRef = fmoRef,
        _fmoStatus = fmoStatus,
        super(firestoreUtilData);

  // "signatory_level" field.
  String? _signatoryLevel;
  String get signatoryLevel => _signatoryLevel ?? '';
  set signatoryLevel(String? val) => _signatoryLevel = val;

  bool hasSignatoryLevel() => _signatoryLevel != null;

  // "signatory_user" field.
  DocumentReference? _signatoryUser;
  DocumentReference? get signatoryUser => _signatoryUser;
  set signatoryUser(DocumentReference? val) => _signatoryUser = val;

  bool hasSignatoryUser() => _signatoryUser != null;

  // "adviser_datetime" field.
  DateTime? _adviserDatetime;
  DateTime? get adviserDatetime => _adviserDatetime;
  set adviserDatetime(DateTime? val) => _adviserDatetime = val;

  bool hasAdviserDatetime() => _adviserDatetime != null;

  // "adviser_feedback" field.
  String? _adviserFeedback;
  String get adviserFeedback => _adviserFeedback ?? '';
  set adviserFeedback(String? val) => _adviserFeedback = val;

  bool hasAdviserFeedback() => _adviserFeedback != null;

  // "adviser_ref" field.
  DocumentReference? _adviserRef;
  DocumentReference? get adviserRef => _adviserRef;
  set adviserRef(DocumentReference? val) => _adviserRef = val;

  bool hasAdviserRef() => _adviserRef != null;

  // "adviser_status" field.
  String? _adviserStatus;
  String get adviserStatus => _adviserStatus ?? '';
  set adviserStatus(String? val) => _adviserStatus = val;

  bool hasAdviserStatus() => _adviserStatus != null;

  // "pc_datetime" field.
  DateTime? _pcDatetime;
  DateTime? get pcDatetime => _pcDatetime;
  set pcDatetime(DateTime? val) => _pcDatetime = val;

  bool hasPcDatetime() => _pcDatetime != null;

  // "pc_feedback" field.
  String? _pcFeedback;
  String get pcFeedback => _pcFeedback ?? '';
  set pcFeedback(String? val) => _pcFeedback = val;

  bool hasPcFeedback() => _pcFeedback != null;

  // "pc_ref" field.
  DocumentReference? _pcRef;
  DocumentReference? get pcRef => _pcRef;
  set pcRef(DocumentReference? val) => _pcRef = val;

  bool hasPcRef() => _pcRef != null;

  // "pc_status" field.
  String? _pcStatus;
  String get pcStatus => _pcStatus ?? '';
  set pcStatus(String? val) => _pcStatus = val;

  bool hasPcStatus() => _pcStatus != null;

  // "dean_datetime" field.
  DateTime? _deanDatetime;
  DateTime? get deanDatetime => _deanDatetime;
  set deanDatetime(DateTime? val) => _deanDatetime = val;

  bool hasDeanDatetime() => _deanDatetime != null;

  // "dean_feedback" field.
  String? _deanFeedback;
  String get deanFeedback => _deanFeedback ?? '';
  set deanFeedback(String? val) => _deanFeedback = val;

  bool hasDeanFeedback() => _deanFeedback != null;

  // "dean_ref" field.
  DocumentReference? _deanRef;
  DocumentReference? get deanRef => _deanRef;
  set deanRef(DocumentReference? val) => _deanRef = val;

  bool hasDeanRef() => _deanRef != null;

  // "dean_status" field.
  String? _deanStatus;
  String get deanStatus => _deanStatus ?? '';
  set deanStatus(String? val) => _deanStatus = val;

  bool hasDeanStatus() => _deanStatus != null;

  // "csg_datetime" field.
  DateTime? _csgDatetime;
  DateTime? get csgDatetime => _csgDatetime;
  set csgDatetime(DateTime? val) => _csgDatetime = val;

  bool hasCsgDatetime() => _csgDatetime != null;

  // "csg_feedback" field.
  String? _csgFeedback;
  String get csgFeedback => _csgFeedback ?? '';
  set csgFeedback(String? val) => _csgFeedback = val;

  bool hasCsgFeedback() => _csgFeedback != null;

  // "csg_ref" field.
  DocumentReference? _csgRef;
  DocumentReference? get csgRef => _csgRef;
  set csgRef(DocumentReference? val) => _csgRef = val;

  bool hasCsgRef() => _csgRef != null;

  // "csg_status" field.
  String? _csgStatus;
  String get csgStatus => _csgStatus ?? '';
  set csgStatus(String? val) => _csgStatus = val;

  bool hasCsgStatus() => _csgStatus != null;

  // "sdao_datetime" field.
  DateTime? _sdaoDatetime;
  DateTime? get sdaoDatetime => _sdaoDatetime;
  set sdaoDatetime(DateTime? val) => _sdaoDatetime = val;

  bool hasSdaoDatetime() => _sdaoDatetime != null;

  // "sdao_feedback" field.
  String? _sdaoFeedback;
  String get sdaoFeedback => _sdaoFeedback ?? '';
  set sdaoFeedback(String? val) => _sdaoFeedback = val;

  bool hasSdaoFeedback() => _sdaoFeedback != null;

  // "sdao_ref" field.
  DocumentReference? _sdaoRef;
  DocumentReference? get sdaoRef => _sdaoRef;
  set sdaoRef(DocumentReference? val) => _sdaoRef = val;

  bool hasSdaoRef() => _sdaoRef != null;

  // "sdao_status" field.
  String? _sdaoStatus;
  String get sdaoStatus => _sdaoStatus ?? '';
  set sdaoStatus(String? val) => _sdaoStatus = val;

  bool hasSdaoStatus() => _sdaoStatus != null;

  // "academic_director_datetime" field.
  DateTime? _academicDirectorDatetime;
  DateTime? get academicDirectorDatetime => _academicDirectorDatetime;
  set academicDirectorDatetime(DateTime? val) =>
      _academicDirectorDatetime = val;

  bool hasAcademicDirectorDatetime() => _academicDirectorDatetime != null;

  // "academic_director_feedback" field.
  String? _academicDirectorFeedback;
  String get academicDirectorFeedback => _academicDirectorFeedback ?? '';
  set academicDirectorFeedback(String? val) => _academicDirectorFeedback = val;

  bool hasAcademicDirectorFeedback() => _academicDirectorFeedback != null;

  // "academic_director_ref" field.
  DocumentReference? _academicDirectorRef;
  DocumentReference? get academicDirectorRef => _academicDirectorRef;
  set academicDirectorRef(DocumentReference? val) => _academicDirectorRef = val;

  bool hasAcademicDirectorRef() => _academicDirectorRef != null;

  // "academic_director_status" field.
  String? _academicDirectorStatus;
  String get academicDirectorStatus => _academicDirectorStatus ?? '';
  set academicDirectorStatus(String? val) => _academicDirectorStatus = val;

  bool hasAcademicDirectorStatus() => _academicDirectorStatus != null;

  // "executive_director_datetime" field.
  DateTime? _executiveDirectorDatetime;
  DateTime? get executiveDirectorDatetime => _executiveDirectorDatetime;
  set executiveDirectorDatetime(DateTime? val) =>
      _executiveDirectorDatetime = val;

  bool hasExecutiveDirectorDatetime() => _executiveDirectorDatetime != null;

  // "exeutive_director_feedback" field.
  String? _exeutiveDirectorFeedback;
  String get exeutiveDirectorFeedback => _exeutiveDirectorFeedback ?? '';
  set exeutiveDirectorFeedback(String? val) => _exeutiveDirectorFeedback = val;

  bool hasExeutiveDirectorFeedback() => _exeutiveDirectorFeedback != null;

  // "executive_director_ref" field.
  DocumentReference? _executiveDirectorRef;
  DocumentReference? get executiveDirectorRef => _executiveDirectorRef;
  set executiveDirectorRef(DocumentReference? val) =>
      _executiveDirectorRef = val;

  bool hasExecutiveDirectorRef() => _executiveDirectorRef != null;

  // "executive_director_status" field.
  String? _executiveDirectorStatus;
  String get executiveDirectorStatus => _executiveDirectorStatus ?? '';
  set executiveDirectorStatus(String? val) => _executiveDirectorStatus = val;

  bool hasExecutiveDirectorStatus() => _executiveDirectorStatus != null;

  // "fmo_datetime" field.
  DateTime? _fmoDatetime;
  DateTime? get fmoDatetime => _fmoDatetime;
  set fmoDatetime(DateTime? val) => _fmoDatetime = val;

  bool hasFmoDatetime() => _fmoDatetime != null;

  // "fmo_feedback" field.
  String? _fmoFeedback;
  String get fmoFeedback => _fmoFeedback ?? '';
  set fmoFeedback(String? val) => _fmoFeedback = val;

  bool hasFmoFeedback() => _fmoFeedback != null;

  // "fmo_ref" field.
  DocumentReference? _fmoRef;
  DocumentReference? get fmoRef => _fmoRef;
  set fmoRef(DocumentReference? val) => _fmoRef = val;

  bool hasFmoRef() => _fmoRef != null;

  // "fmo_status" field.
  String? _fmoStatus;
  String get fmoStatus => _fmoStatus ?? '';
  set fmoStatus(String? val) => _fmoStatus = val;

  bool hasFmoStatus() => _fmoStatus != null;

  static SignatoriesStruct fromMap(Map<String, dynamic> data) =>
      SignatoriesStruct(
        signatoryLevel: data['signatory_level'] as String?,
        signatoryUser: data['signatory_user'] as DocumentReference?,
        adviserDatetime: data['adviser_datetime'] as DateTime?,
        adviserFeedback: data['adviser_feedback'] as String?,
        adviserRef: data['adviser_ref'] as DocumentReference?,
        adviserStatus: data['adviser_status'] as String?,
        pcDatetime: data['pc_datetime'] as DateTime?,
        pcFeedback: data['pc_feedback'] as String?,
        pcRef: data['pc_ref'] as DocumentReference?,
        pcStatus: data['pc_status'] as String?,
        deanDatetime: data['dean_datetime'] as DateTime?,
        deanFeedback: data['dean_feedback'] as String?,
        deanRef: data['dean_ref'] as DocumentReference?,
        deanStatus: data['dean_status'] as String?,
        csgDatetime: data['csg_datetime'] as DateTime?,
        csgFeedback: data['csg_feedback'] as String?,
        csgRef: data['csg_ref'] as DocumentReference?,
        csgStatus: data['csg_status'] as String?,
        sdaoDatetime: data['sdao_datetime'] as DateTime?,
        sdaoFeedback: data['sdao_feedback'] as String?,
        sdaoRef: data['sdao_ref'] as DocumentReference?,
        sdaoStatus: data['sdao_status'] as String?,
        academicDirectorDatetime:
            data['academic_director_datetime'] as DateTime?,
        academicDirectorFeedback: data['academic_director_feedback'] as String?,
        academicDirectorRef:
            data['academic_director_ref'] as DocumentReference?,
        academicDirectorStatus: data['academic_director_status'] as String?,
        executiveDirectorDatetime:
            data['executive_director_datetime'] as DateTime?,
        exeutiveDirectorFeedback: data['exeutive_director_feedback'] as String?,
        executiveDirectorRef:
            data['executive_director_ref'] as DocumentReference?,
        executiveDirectorStatus: data['executive_director_status'] as String?,
        fmoDatetime: data['fmo_datetime'] as DateTime?,
        fmoFeedback: data['fmo_feedback'] as String?,
        fmoRef: data['fmo_ref'] as DocumentReference?,
        fmoStatus: data['fmo_status'] as String?,
      );

  static SignatoriesStruct? maybeFromMap(dynamic data) => data is Map
      ? SignatoriesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'signatory_level': _signatoryLevel,
        'signatory_user': _signatoryUser,
        'adviser_datetime': _adviserDatetime,
        'adviser_feedback': _adviserFeedback,
        'adviser_ref': _adviserRef,
        'adviser_status': _adviserStatus,
        'pc_datetime': _pcDatetime,
        'pc_feedback': _pcFeedback,
        'pc_ref': _pcRef,
        'pc_status': _pcStatus,
        'dean_datetime': _deanDatetime,
        'dean_feedback': _deanFeedback,
        'dean_ref': _deanRef,
        'dean_status': _deanStatus,
        'csg_datetime': _csgDatetime,
        'csg_feedback': _csgFeedback,
        'csg_ref': _csgRef,
        'csg_status': _csgStatus,
        'sdao_datetime': _sdaoDatetime,
        'sdao_feedback': _sdaoFeedback,
        'sdao_ref': _sdaoRef,
        'sdao_status': _sdaoStatus,
        'academic_director_datetime': _academicDirectorDatetime,
        'academic_director_feedback': _academicDirectorFeedback,
        'academic_director_ref': _academicDirectorRef,
        'academic_director_status': _academicDirectorStatus,
        'executive_director_datetime': _executiveDirectorDatetime,
        'exeutive_director_feedback': _exeutiveDirectorFeedback,
        'executive_director_ref': _executiveDirectorRef,
        'executive_director_status': _executiveDirectorStatus,
        'fmo_datetime': _fmoDatetime,
        'fmo_feedback': _fmoFeedback,
        'fmo_ref': _fmoRef,
        'fmo_status': _fmoStatus,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'signatory_level': serializeParam(
          _signatoryLevel,
          ParamType.String,
        ),
        'signatory_user': serializeParam(
          _signatoryUser,
          ParamType.DocumentReference,
        ),
        'adviser_datetime': serializeParam(
          _adviserDatetime,
          ParamType.DateTime,
        ),
        'adviser_feedback': serializeParam(
          _adviserFeedback,
          ParamType.String,
        ),
        'adviser_ref': serializeParam(
          _adviserRef,
          ParamType.DocumentReference,
        ),
        'adviser_status': serializeParam(
          _adviserStatus,
          ParamType.String,
        ),
        'pc_datetime': serializeParam(
          _pcDatetime,
          ParamType.DateTime,
        ),
        'pc_feedback': serializeParam(
          _pcFeedback,
          ParamType.String,
        ),
        'pc_ref': serializeParam(
          _pcRef,
          ParamType.DocumentReference,
        ),
        'pc_status': serializeParam(
          _pcStatus,
          ParamType.String,
        ),
        'dean_datetime': serializeParam(
          _deanDatetime,
          ParamType.DateTime,
        ),
        'dean_feedback': serializeParam(
          _deanFeedback,
          ParamType.String,
        ),
        'dean_ref': serializeParam(
          _deanRef,
          ParamType.DocumentReference,
        ),
        'dean_status': serializeParam(
          _deanStatus,
          ParamType.String,
        ),
        'csg_datetime': serializeParam(
          _csgDatetime,
          ParamType.DateTime,
        ),
        'csg_feedback': serializeParam(
          _csgFeedback,
          ParamType.String,
        ),
        'csg_ref': serializeParam(
          _csgRef,
          ParamType.DocumentReference,
        ),
        'csg_status': serializeParam(
          _csgStatus,
          ParamType.String,
        ),
        'sdao_datetime': serializeParam(
          _sdaoDatetime,
          ParamType.DateTime,
        ),
        'sdao_feedback': serializeParam(
          _sdaoFeedback,
          ParamType.String,
        ),
        'sdao_ref': serializeParam(
          _sdaoRef,
          ParamType.DocumentReference,
        ),
        'sdao_status': serializeParam(
          _sdaoStatus,
          ParamType.String,
        ),
        'academic_director_datetime': serializeParam(
          _academicDirectorDatetime,
          ParamType.DateTime,
        ),
        'academic_director_feedback': serializeParam(
          _academicDirectorFeedback,
          ParamType.String,
        ),
        'academic_director_ref': serializeParam(
          _academicDirectorRef,
          ParamType.DocumentReference,
        ),
        'academic_director_status': serializeParam(
          _academicDirectorStatus,
          ParamType.String,
        ),
        'executive_director_datetime': serializeParam(
          _executiveDirectorDatetime,
          ParamType.DateTime,
        ),
        'exeutive_director_feedback': serializeParam(
          _exeutiveDirectorFeedback,
          ParamType.String,
        ),
        'executive_director_ref': serializeParam(
          _executiveDirectorRef,
          ParamType.DocumentReference,
        ),
        'executive_director_status': serializeParam(
          _executiveDirectorStatus,
          ParamType.String,
        ),
        'fmo_datetime': serializeParam(
          _fmoDatetime,
          ParamType.DateTime,
        ),
        'fmo_feedback': serializeParam(
          _fmoFeedback,
          ParamType.String,
        ),
        'fmo_ref': serializeParam(
          _fmoRef,
          ParamType.DocumentReference,
        ),
        'fmo_status': serializeParam(
          _fmoStatus,
          ParamType.String,
        ),
      }.withoutNulls;

  static SignatoriesStruct fromSerializableMap(Map<String, dynamic> data) =>
      SignatoriesStruct(
        signatoryLevel: deserializeParam(
          data['signatory_level'],
          ParamType.String,
          false,
        ),
        signatoryUser: deserializeParam(
          data['signatory_user'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        adviserDatetime: deserializeParam(
          data['adviser_datetime'],
          ParamType.DateTime,
          false,
        ),
        adviserFeedback: deserializeParam(
          data['adviser_feedback'],
          ParamType.String,
          false,
        ),
        adviserRef: deserializeParam(
          data['adviser_ref'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        adviserStatus: deserializeParam(
          data['adviser_status'],
          ParamType.String,
          false,
        ),
        pcDatetime: deserializeParam(
          data['pc_datetime'],
          ParamType.DateTime,
          false,
        ),
        pcFeedback: deserializeParam(
          data['pc_feedback'],
          ParamType.String,
          false,
        ),
        pcRef: deserializeParam(
          data['pc_ref'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        pcStatus: deserializeParam(
          data['pc_status'],
          ParamType.String,
          false,
        ),
        deanDatetime: deserializeParam(
          data['dean_datetime'],
          ParamType.DateTime,
          false,
        ),
        deanFeedback: deserializeParam(
          data['dean_feedback'],
          ParamType.String,
          false,
        ),
        deanRef: deserializeParam(
          data['dean_ref'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        deanStatus: deserializeParam(
          data['dean_status'],
          ParamType.String,
          false,
        ),
        csgDatetime: deserializeParam(
          data['csg_datetime'],
          ParamType.DateTime,
          false,
        ),
        csgFeedback: deserializeParam(
          data['csg_feedback'],
          ParamType.String,
          false,
        ),
        csgRef: deserializeParam(
          data['csg_ref'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        csgStatus: deserializeParam(
          data['csg_status'],
          ParamType.String,
          false,
        ),
        sdaoDatetime: deserializeParam(
          data['sdao_datetime'],
          ParamType.DateTime,
          false,
        ),
        sdaoFeedback: deserializeParam(
          data['sdao_feedback'],
          ParamType.String,
          false,
        ),
        sdaoRef: deserializeParam(
          data['sdao_ref'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        sdaoStatus: deserializeParam(
          data['sdao_status'],
          ParamType.String,
          false,
        ),
        academicDirectorDatetime: deserializeParam(
          data['academic_director_datetime'],
          ParamType.DateTime,
          false,
        ),
        academicDirectorFeedback: deserializeParam(
          data['academic_director_feedback'],
          ParamType.String,
          false,
        ),
        academicDirectorRef: deserializeParam(
          data['academic_director_ref'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        academicDirectorStatus: deserializeParam(
          data['academic_director_status'],
          ParamType.String,
          false,
        ),
        executiveDirectorDatetime: deserializeParam(
          data['executive_director_datetime'],
          ParamType.DateTime,
          false,
        ),
        exeutiveDirectorFeedback: deserializeParam(
          data['exeutive_director_feedback'],
          ParamType.String,
          false,
        ),
        executiveDirectorRef: deserializeParam(
          data['executive_director_ref'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        executiveDirectorStatus: deserializeParam(
          data['executive_director_status'],
          ParamType.String,
          false,
        ),
        fmoDatetime: deserializeParam(
          data['fmo_datetime'],
          ParamType.DateTime,
          false,
        ),
        fmoFeedback: deserializeParam(
          data['fmo_feedback'],
          ParamType.String,
          false,
        ),
        fmoRef: deserializeParam(
          data['fmo_ref'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        fmoStatus: deserializeParam(
          data['fmo_status'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'SignatoriesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SignatoriesStruct &&
        signatoryLevel == other.signatoryLevel &&
        signatoryUser == other.signatoryUser &&
        adviserDatetime == other.adviserDatetime &&
        adviserFeedback == other.adviserFeedback &&
        adviserRef == other.adviserRef &&
        adviserStatus == other.adviserStatus &&
        pcDatetime == other.pcDatetime &&
        pcFeedback == other.pcFeedback &&
        pcRef == other.pcRef &&
        pcStatus == other.pcStatus &&
        deanDatetime == other.deanDatetime &&
        deanFeedback == other.deanFeedback &&
        deanRef == other.deanRef &&
        deanStatus == other.deanStatus &&
        csgDatetime == other.csgDatetime &&
        csgFeedback == other.csgFeedback &&
        csgRef == other.csgRef &&
        csgStatus == other.csgStatus &&
        sdaoDatetime == other.sdaoDatetime &&
        sdaoFeedback == other.sdaoFeedback &&
        sdaoRef == other.sdaoRef &&
        sdaoStatus == other.sdaoStatus &&
        academicDirectorDatetime == other.academicDirectorDatetime &&
        academicDirectorFeedback == other.academicDirectorFeedback &&
        academicDirectorRef == other.academicDirectorRef &&
        academicDirectorStatus == other.academicDirectorStatus &&
        executiveDirectorDatetime == other.executiveDirectorDatetime &&
        exeutiveDirectorFeedback == other.exeutiveDirectorFeedback &&
        executiveDirectorRef == other.executiveDirectorRef &&
        executiveDirectorStatus == other.executiveDirectorStatus &&
        fmoDatetime == other.fmoDatetime &&
        fmoFeedback == other.fmoFeedback &&
        fmoRef == other.fmoRef &&
        fmoStatus == other.fmoStatus;
  }

  @override
  int get hashCode => const ListEquality().hash([
        signatoryLevel,
        signatoryUser,
        adviserDatetime,
        adviserFeedback,
        adviserRef,
        adviserStatus,
        pcDatetime,
        pcFeedback,
        pcRef,
        pcStatus,
        deanDatetime,
        deanFeedback,
        deanRef,
        deanStatus,
        csgDatetime,
        csgFeedback,
        csgRef,
        csgStatus,
        sdaoDatetime,
        sdaoFeedback,
        sdaoRef,
        sdaoStatus,
        academicDirectorDatetime,
        academicDirectorFeedback,
        academicDirectorRef,
        academicDirectorStatus,
        executiveDirectorDatetime,
        exeutiveDirectorFeedback,
        executiveDirectorRef,
        executiveDirectorStatus,
        fmoDatetime,
        fmoFeedback,
        fmoRef,
        fmoStatus
      ]);
}

SignatoriesStruct createSignatoriesStruct({
  String? signatoryLevel,
  DocumentReference? signatoryUser,
  DateTime? adviserDatetime,
  String? adviserFeedback,
  DocumentReference? adviserRef,
  String? adviserStatus,
  DateTime? pcDatetime,
  String? pcFeedback,
  DocumentReference? pcRef,
  String? pcStatus,
  DateTime? deanDatetime,
  String? deanFeedback,
  DocumentReference? deanRef,
  String? deanStatus,
  DateTime? csgDatetime,
  String? csgFeedback,
  DocumentReference? csgRef,
  String? csgStatus,
  DateTime? sdaoDatetime,
  String? sdaoFeedback,
  DocumentReference? sdaoRef,
  String? sdaoStatus,
  DateTime? academicDirectorDatetime,
  String? academicDirectorFeedback,
  DocumentReference? academicDirectorRef,
  String? academicDirectorStatus,
  DateTime? executiveDirectorDatetime,
  String? exeutiveDirectorFeedback,
  DocumentReference? executiveDirectorRef,
  String? executiveDirectorStatus,
  DateTime? fmoDatetime,
  String? fmoFeedback,
  DocumentReference? fmoRef,
  String? fmoStatus,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SignatoriesStruct(
      signatoryLevel: signatoryLevel,
      signatoryUser: signatoryUser,
      adviserDatetime: adviserDatetime,
      adviserFeedback: adviserFeedback,
      adviserRef: adviserRef,
      adviserStatus: adviserStatus,
      pcDatetime: pcDatetime,
      pcFeedback: pcFeedback,
      pcRef: pcRef,
      pcStatus: pcStatus,
      deanDatetime: deanDatetime,
      deanFeedback: deanFeedback,
      deanRef: deanRef,
      deanStatus: deanStatus,
      csgDatetime: csgDatetime,
      csgFeedback: csgFeedback,
      csgRef: csgRef,
      csgStatus: csgStatus,
      sdaoDatetime: sdaoDatetime,
      sdaoFeedback: sdaoFeedback,
      sdaoRef: sdaoRef,
      sdaoStatus: sdaoStatus,
      academicDirectorDatetime: academicDirectorDatetime,
      academicDirectorFeedback: academicDirectorFeedback,
      academicDirectorRef: academicDirectorRef,
      academicDirectorStatus: academicDirectorStatus,
      executiveDirectorDatetime: executiveDirectorDatetime,
      exeutiveDirectorFeedback: exeutiveDirectorFeedback,
      executiveDirectorRef: executiveDirectorRef,
      executiveDirectorStatus: executiveDirectorStatus,
      fmoDatetime: fmoDatetime,
      fmoFeedback: fmoFeedback,
      fmoRef: fmoRef,
      fmoStatus: fmoStatus,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SignatoriesStruct? updateSignatoriesStruct(
  SignatoriesStruct? signatories, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    signatories
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSignatoriesStructData(
  Map<String, dynamic> firestoreData,
  SignatoriesStruct? signatories,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (signatories == null) {
    return;
  }
  if (signatories.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && signatories.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final signatoriesData =
      getSignatoriesFirestoreData(signatories, forFieldValue);
  final nestedData =
      signatoriesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = signatories.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSignatoriesFirestoreData(
  SignatoriesStruct? signatories, [
  bool forFieldValue = false,
]) {
  if (signatories == null) {
    return {};
  }
  final firestoreData = mapToFirestore(signatories.toMap());

  // Add any Firestore field values
  signatories.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSignatoriesListFirestoreData(
  List<SignatoriesStruct>? signatoriess,
) =>
    signatoriess?.map((e) => getSignatoriesFirestoreData(e, true)).toList() ??
    [];
