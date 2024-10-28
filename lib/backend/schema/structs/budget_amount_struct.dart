// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BudgetAmountStruct extends FFFirebaseStruct {
  BudgetAmountStruct({
    double? organization,
    double? sponsor,
    double? school,
    double? sdao,
    double? grandTotal,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _organization = organization,
        _sponsor = sponsor,
        _school = school,
        _sdao = sdao,
        _grandTotal = grandTotal,
        super(firestoreUtilData);

  // "organization" field.
  double? _organization;
  double get organization => _organization ?? 0.0;
  set organization(double? val) => _organization = val;

  void incrementOrganization(double amount) =>
      organization = organization + amount;

  bool hasOrganization() => _organization != null;

  // "sponsor" field.
  double? _sponsor;
  double get sponsor => _sponsor ?? 0.0;
  set sponsor(double? val) => _sponsor = val;

  void incrementSponsor(double amount) => sponsor = sponsor + amount;

  bool hasSponsor() => _sponsor != null;

  // "school" field.
  double? _school;
  double get school => _school ?? 0.0;
  set school(double? val) => _school = val;

  void incrementSchool(double amount) => school = school + amount;

  bool hasSchool() => _school != null;

  // "sdao" field.
  double? _sdao;
  double get sdao => _sdao ?? 0.0;
  set sdao(double? val) => _sdao = val;

  void incrementSdao(double amount) => sdao = sdao + amount;

  bool hasSdao() => _sdao != null;

  // "grand_total" field.
  double? _grandTotal;
  double get grandTotal => _grandTotal ?? 0.0;
  set grandTotal(double? val) => _grandTotal = val;

  void incrementGrandTotal(double amount) => grandTotal = grandTotal + amount;

  bool hasGrandTotal() => _grandTotal != null;

  static BudgetAmountStruct fromMap(Map<String, dynamic> data) =>
      BudgetAmountStruct(
        organization: castToType<double>(data['organization']),
        sponsor: castToType<double>(data['sponsor']),
        school: castToType<double>(data['school']),
        sdao: castToType<double>(data['sdao']),
        grandTotal: castToType<double>(data['grand_total']),
      );

  static BudgetAmountStruct? maybeFromMap(dynamic data) => data is Map
      ? BudgetAmountStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'organization': _organization,
        'sponsor': _sponsor,
        'school': _school,
        'sdao': _sdao,
        'grand_total': _grandTotal,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'organization': serializeParam(
          _organization,
          ParamType.double,
        ),
        'sponsor': serializeParam(
          _sponsor,
          ParamType.double,
        ),
        'school': serializeParam(
          _school,
          ParamType.double,
        ),
        'sdao': serializeParam(
          _sdao,
          ParamType.double,
        ),
        'grand_total': serializeParam(
          _grandTotal,
          ParamType.double,
        ),
      }.withoutNulls;

  static BudgetAmountStruct fromSerializableMap(Map<String, dynamic> data) =>
      BudgetAmountStruct(
        organization: deserializeParam(
          data['organization'],
          ParamType.double,
          false,
        ),
        sponsor: deserializeParam(
          data['sponsor'],
          ParamType.double,
          false,
        ),
        school: deserializeParam(
          data['school'],
          ParamType.double,
          false,
        ),
        sdao: deserializeParam(
          data['sdao'],
          ParamType.double,
          false,
        ),
        grandTotal: deserializeParam(
          data['grand_total'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'BudgetAmountStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BudgetAmountStruct &&
        organization == other.organization &&
        sponsor == other.sponsor &&
        school == other.school &&
        sdao == other.sdao &&
        grandTotal == other.grandTotal;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([organization, sponsor, school, sdao, grandTotal]);
}

BudgetAmountStruct createBudgetAmountStruct({
  double? organization,
  double? sponsor,
  double? school,
  double? sdao,
  double? grandTotal,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    BudgetAmountStruct(
      organization: organization,
      sponsor: sponsor,
      school: school,
      sdao: sdao,
      grandTotal: grandTotal,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

BudgetAmountStruct? updateBudgetAmountStruct(
  BudgetAmountStruct? budgetAmount, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    budgetAmount
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addBudgetAmountStructData(
  Map<String, dynamic> firestoreData,
  BudgetAmountStruct? budgetAmount,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (budgetAmount == null) {
    return;
  }
  if (budgetAmount.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && budgetAmount.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final budgetAmountData =
      getBudgetAmountFirestoreData(budgetAmount, forFieldValue);
  final nestedData =
      budgetAmountData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = budgetAmount.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getBudgetAmountFirestoreData(
  BudgetAmountStruct? budgetAmount, [
  bool forFieldValue = false,
]) {
  if (budgetAmount == null) {
    return {};
  }
  final firestoreData = mapToFirestore(budgetAmount.toMap());

  // Add any Firestore field values
  budgetAmount.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getBudgetAmountListFirestoreData(
  List<BudgetAmountStruct>? budgetAmounts,
) =>
    budgetAmounts?.map((e) => getBudgetAmountFirestoreData(e, true)).toList() ??
    [];
