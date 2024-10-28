// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class OrdersStruct extends FFFirebaseStruct {
  OrdersStruct({
    DocumentReference? product,
    int? quantity,
    double? subTotal,
    DateTime? timestamp,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _product = product,
        _quantity = quantity,
        _subTotal = subTotal,
        _timestamp = timestamp,
        super(firestoreUtilData);

  // "product" field.
  DocumentReference? _product;
  DocumentReference? get product => _product;
  set product(DocumentReference? val) => _product = val;

  bool hasProduct() => _product != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;

  void incrementQuantity(int amount) => quantity = quantity + amount;

  bool hasQuantity() => _quantity != null;

  // "sub_total" field.
  double? _subTotal;
  double get subTotal => _subTotal ?? 0.0;
  set subTotal(double? val) => _subTotal = val;

  void incrementSubTotal(double amount) => subTotal = subTotal + amount;

  bool hasSubTotal() => _subTotal != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  set timestamp(DateTime? val) => _timestamp = val;

  bool hasTimestamp() => _timestamp != null;

  static OrdersStruct fromMap(Map<String, dynamic> data) => OrdersStruct(
        product: data['product'] as DocumentReference?,
        quantity: castToType<int>(data['quantity']),
        subTotal: castToType<double>(data['sub_total']),
        timestamp: data['timestamp'] as DateTime?,
      );

  static OrdersStruct? maybeFromMap(dynamic data) =>
      data is Map ? OrdersStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'product': _product,
        'quantity': _quantity,
        'sub_total': _subTotal,
        'timestamp': _timestamp,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'product': serializeParam(
          _product,
          ParamType.DocumentReference,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'sub_total': serializeParam(
          _subTotal,
          ParamType.double,
        ),
        'timestamp': serializeParam(
          _timestamp,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static OrdersStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrdersStruct(
        product: deserializeParam(
          data['product'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['products'],
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        subTotal: deserializeParam(
          data['sub_total'],
          ParamType.double,
          false,
        ),
        timestamp: deserializeParam(
          data['timestamp'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'OrdersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrdersStruct &&
        product == other.product &&
        quantity == other.quantity &&
        subTotal == other.subTotal &&
        timestamp == other.timestamp;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([product, quantity, subTotal, timestamp]);
}

OrdersStruct createOrdersStruct({
  DocumentReference? product,
  int? quantity,
  double? subTotal,
  DateTime? timestamp,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OrdersStruct(
      product: product,
      quantity: quantity,
      subTotal: subTotal,
      timestamp: timestamp,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OrdersStruct? updateOrdersStruct(
  OrdersStruct? orders, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    orders
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOrdersStructData(
  Map<String, dynamic> firestoreData,
  OrdersStruct? orders,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (orders == null) {
    return;
  }
  if (orders.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && orders.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final ordersData = getOrdersFirestoreData(orders, forFieldValue);
  final nestedData = ordersData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = orders.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOrdersFirestoreData(
  OrdersStruct? orders, [
  bool forFieldValue = false,
]) {
  if (orders == null) {
    return {};
  }
  final firestoreData = mapToFirestore(orders.toMap());

  // Add any Firestore field values
  orders.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOrdersListFirestoreData(
  List<OrdersStruct>? orderss,
) =>
    orderss?.map((e) => getOrdersFirestoreData(e, true)).toList() ?? [];
