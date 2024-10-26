// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OfficeHeadsStruct extends FFFirebaseStruct {
  OfficeHeadsStruct({
    DocumentReference? csg,
    DocumentReference? sdao,
    DocumentReference? academicDirector,
    DocumentReference? executiveDirector,
    DocumentReference? fmo,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _csg = csg,
        _sdao = sdao,
        _academicDirector = academicDirector,
        _executiveDirector = executiveDirector,
        _fmo = fmo,
        super(firestoreUtilData);

  // "csg" field.
  DocumentReference? _csg;
  DocumentReference? get csg => _csg;
  set csg(DocumentReference? val) => _csg = val;

  bool hasCsg() => _csg != null;

  // "sdao" field.
  DocumentReference? _sdao;
  DocumentReference? get sdao => _sdao;
  set sdao(DocumentReference? val) => _sdao = val;

  bool hasSdao() => _sdao != null;

  // "academic_director" field.
  DocumentReference? _academicDirector;
  DocumentReference? get academicDirector => _academicDirector;
  set academicDirector(DocumentReference? val) => _academicDirector = val;

  bool hasAcademicDirector() => _academicDirector != null;

  // "executive_director" field.
  DocumentReference? _executiveDirector;
  DocumentReference? get executiveDirector => _executiveDirector;
  set executiveDirector(DocumentReference? val) => _executiveDirector = val;

  bool hasExecutiveDirector() => _executiveDirector != null;

  // "fmo" field.
  DocumentReference? _fmo;
  DocumentReference? get fmo => _fmo;
  set fmo(DocumentReference? val) => _fmo = val;

  bool hasFmo() => _fmo != null;

  static OfficeHeadsStruct fromMap(Map<String, dynamic> data) =>
      OfficeHeadsStruct(
        csg: data['csg'] as DocumentReference?,
        sdao: data['sdao'] as DocumentReference?,
        academicDirector: data['academic_director'] as DocumentReference?,
        executiveDirector: data['executive_director'] as DocumentReference?,
        fmo: data['fmo'] as DocumentReference?,
      );

  static OfficeHeadsStruct? maybeFromMap(dynamic data) => data is Map
      ? OfficeHeadsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'csg': _csg,
        'sdao': _sdao,
        'academic_director': _academicDirector,
        'executive_director': _executiveDirector,
        'fmo': _fmo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'csg': serializeParam(
          _csg,
          ParamType.DocumentReference,
        ),
        'sdao': serializeParam(
          _sdao,
          ParamType.DocumentReference,
        ),
        'academic_director': serializeParam(
          _academicDirector,
          ParamType.DocumentReference,
        ),
        'executive_director': serializeParam(
          _executiveDirector,
          ParamType.DocumentReference,
        ),
        'fmo': serializeParam(
          _fmo,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static OfficeHeadsStruct fromSerializableMap(Map<String, dynamic> data) =>
      OfficeHeadsStruct(
        csg: deserializeParam(
          data['csg'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['office'],
        ),
        sdao: deserializeParam(
          data['sdao'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['office'],
        ),
        academicDirector: deserializeParam(
          data['academic_director'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['office'],
        ),
        executiveDirector: deserializeParam(
          data['executive_director'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['office'],
        ),
        fmo: deserializeParam(
          data['fmo'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['office'],
        ),
      );

  @override
  String toString() => 'OfficeHeadsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OfficeHeadsStruct &&
        csg == other.csg &&
        sdao == other.sdao &&
        academicDirector == other.academicDirector &&
        executiveDirector == other.executiveDirector &&
        fmo == other.fmo;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([csg, sdao, academicDirector, executiveDirector, fmo]);
}

OfficeHeadsStruct createOfficeHeadsStruct({
  DocumentReference? csg,
  DocumentReference? sdao,
  DocumentReference? academicDirector,
  DocumentReference? executiveDirector,
  DocumentReference? fmo,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OfficeHeadsStruct(
      csg: csg,
      sdao: sdao,
      academicDirector: academicDirector,
      executiveDirector: executiveDirector,
      fmo: fmo,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OfficeHeadsStruct? updateOfficeHeadsStruct(
  OfficeHeadsStruct? officeHeads, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    officeHeads
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOfficeHeadsStructData(
  Map<String, dynamic> firestoreData,
  OfficeHeadsStruct? officeHeads,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (officeHeads == null) {
    return;
  }
  if (officeHeads.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && officeHeads.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final officeHeadsData =
      getOfficeHeadsFirestoreData(officeHeads, forFieldValue);
  final nestedData =
      officeHeadsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = officeHeads.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOfficeHeadsFirestoreData(
  OfficeHeadsStruct? officeHeads, [
  bool forFieldValue = false,
]) {
  if (officeHeads == null) {
    return {};
  }
  final firestoreData = mapToFirestore(officeHeads.toMap());

  // Add any Firestore field values
  officeHeads.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOfficeHeadsListFirestoreData(
  List<OfficeHeadsStruct>? officeHeadss,
) =>
    officeHeadss?.map((e) => getOfficeHeadsFirestoreData(e, true)).toList() ??
    [];
