import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "customer_ref" field.
  DocumentReference? _customerRef;
  DocumentReference? get customerRef => _customerRef;
  bool hasCustomerRef() => _customerRef != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "products" field.
  List<OrdersStruct>? _products;
  List<OrdersStruct> get products => _products ?? const [];
  bool hasProducts() => _products != null;

  // "total_price" field.
  double? _totalPrice;
  double get totalPrice => _totalPrice ?? 0.0;
  bool hasTotalPrice() => _totalPrice != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updated_at" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "order_placed" field.
  DateTime? _orderPlaced;
  DateTime? get orderPlaced => _orderPlaced;
  bool hasOrderPlaced() => _orderPlaced != null;

  // "order_for_claiming" field.
  DateTime? _orderForClaiming;
  DateTime? get orderForClaiming => _orderForClaiming;
  bool hasOrderForClaiming() => _orderForClaiming != null;

  // "order_received" field.
  DateTime? _orderReceived;
  DateTime? get orderReceived => _orderReceived;
  bool hasOrderReceived() => _orderReceived != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _customerRef = snapshotData['customer_ref'] as DocumentReference?;
    _status = snapshotData['status'] as String?;
    _products = getStructList(
      snapshotData['products'],
      OrdersStruct.fromMap,
    );
    _totalPrice = castToType<double>(snapshotData['total_price']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _updatedAt = snapshotData['updated_at'] as DateTime?;
    _orderPlaced = snapshotData['order_placed'] as DateTime?;
    _orderForClaiming = snapshotData['order_for_claiming'] as DateTime?;
    _orderReceived = snapshotData['order_received'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  String? id,
  DocumentReference? customerRef,
  String? status,
  double? totalPrice,
  DateTime? createdAt,
  DateTime? updatedAt,
  DateTime? orderPlaced,
  DateTime? orderForClaiming,
  DateTime? orderReceived,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'customer_ref': customerRef,
      'status': status,
      'total_price': totalPrice,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'order_placed': orderPlaced,
      'order_for_claiming': orderForClaiming,
      'order_received': orderReceived,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.id == e2?.id &&
        e1?.customerRef == e2?.customerRef &&
        e1?.status == e2?.status &&
        listEquality.equals(e1?.products, e2?.products) &&
        e1?.totalPrice == e2?.totalPrice &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.orderPlaced == e2?.orderPlaced &&
        e1?.orderForClaiming == e2?.orderForClaiming &&
        e1?.orderReceived == e2?.orderReceived;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.id,
        e?.customerRef,
        e?.status,
        e?.products,
        e?.totalPrice,
        e?.createdAt,
        e?.updatedAt,
        e?.orderPlaced,
        e?.orderForClaiming,
        e?.orderReceived
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
