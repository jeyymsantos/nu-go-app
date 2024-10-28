// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BudgetListStruct extends FFFirebaseStruct {
  BudgetListStruct({
    String? itemName,
    double? price,
    double? qty,
    double? amount,
    String? chargedTo,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _itemName = itemName,
        _price = price,
        _qty = qty,
        _amount = amount,
        _chargedTo = chargedTo,
        super(firestoreUtilData);

  // "item_name" field.
  String? _itemName;
  String get itemName => _itemName ?? '';
  set itemName(String? val) => _itemName = val;

  bool hasItemName() => _itemName != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;

  void incrementPrice(double amount) => price = price + amount;

  bool hasPrice() => _price != null;

  // "qty" field.
  double? _qty;
  double get qty => _qty ?? 0.0;
  set qty(double? val) => _qty = val;

  void incrementQty(double amount) => qty = qty + amount;

  bool hasQty() => _qty != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "charged_to" field.
  String? _chargedTo;
  String get chargedTo => _chargedTo ?? '';
  set chargedTo(String? val) => _chargedTo = val;

  bool hasChargedTo() => _chargedTo != null;

  static BudgetListStruct fromMap(Map<String, dynamic> data) =>
      BudgetListStruct(
        itemName: data['item_name'] as String?,
        price: castToType<double>(data['price']),
        qty: castToType<double>(data['qty']),
        amount: castToType<double>(data['amount']),
        chargedTo: data['charged_to'] as String?,
      );

  static BudgetListStruct? maybeFromMap(dynamic data) => data is Map
      ? BudgetListStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'item_name': _itemName,
        'price': _price,
        'qty': _qty,
        'amount': _amount,
        'charged_to': _chargedTo,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'item_name': serializeParam(
          _itemName,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
        'qty': serializeParam(
          _qty,
          ParamType.double,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'charged_to': serializeParam(
          _chargedTo,
          ParamType.String,
        ),
      }.withoutNulls;

  static BudgetListStruct fromSerializableMap(Map<String, dynamic> data) =>
      BudgetListStruct(
        itemName: deserializeParam(
          data['item_name'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
        qty: deserializeParam(
          data['qty'],
          ParamType.double,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        chargedTo: deserializeParam(
          data['charged_to'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BudgetListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BudgetListStruct &&
        itemName == other.itemName &&
        price == other.price &&
        qty == other.qty &&
        amount == other.amount &&
        chargedTo == other.chargedTo;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([itemName, price, qty, amount, chargedTo]);
}

BudgetListStruct createBudgetListStruct({
  String? itemName,
  double? price,
  double? qty,
  double? amount,
  String? chargedTo,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    BudgetListStruct(
      itemName: itemName,
      price: price,
      qty: qty,
      amount: amount,
      chargedTo: chargedTo,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

BudgetListStruct? updateBudgetListStruct(
  BudgetListStruct? budgetList, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    budgetList
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addBudgetListStructData(
  Map<String, dynamic> firestoreData,
  BudgetListStruct? budgetList,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (budgetList == null) {
    return;
  }
  if (budgetList.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && budgetList.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final budgetListData = getBudgetListFirestoreData(budgetList, forFieldValue);
  final nestedData = budgetListData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = budgetList.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getBudgetListFirestoreData(
  BudgetListStruct? budgetList, [
  bool forFieldValue = false,
]) {
  if (budgetList == null) {
    return {};
  }
  final firestoreData = mapToFirestore(budgetList.toMap());

  // Add any Firestore field values
  budgetList.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getBudgetListListFirestoreData(
  List<BudgetListStruct>? budgetLists,
) =>
    budgetLists?.map((e) => getBudgetListFirestoreData(e, true)).toList() ?? [];
