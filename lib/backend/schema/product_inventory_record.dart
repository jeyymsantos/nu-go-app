import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductInventoryRecord extends FirestoreRecord {
  ProductInventoryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "quantity_change" field.
  int? _quantityChange;
  int get quantityChange => _quantityChange ?? 0;
  bool hasQuantityChange() => _quantityChange != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "previous_stock" field.
  int? _previousStock;
  int get previousStock => _previousStock ?? 0;
  bool hasPreviousStock() => _previousStock != null;

  // "new_stock" field.
  int? _newStock;
  int get newStock => _newStock ?? 0;
  bool hasNewStock() => _newStock != null;

  // "user_reference" field.
  DocumentReference? _userReference;
  DocumentReference? get userReference => _userReference;
  bool hasUserReference() => _userReference != null;

  // "note" field.
  String? _note;
  String get note => _note ?? '';
  bool hasNote() => _note != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _type = snapshotData['type'] as String?;
    _quantityChange = castToType<int>(snapshotData['quantity_change']);
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _previousStock = castToType<int>(snapshotData['previous_stock']);
    _newStock = castToType<int>(snapshotData['new_stock']);
    _userReference = snapshotData['user_reference'] as DocumentReference?;
    _note = snapshotData['note'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('product_inventory')
          : FirebaseFirestore.instance.collectionGroup('product_inventory');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('product_inventory').doc(id);

  static Stream<ProductInventoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductInventoryRecord.fromSnapshot(s));

  static Future<ProductInventoryRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ProductInventoryRecord.fromSnapshot(s));

  static ProductInventoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductInventoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductInventoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductInventoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductInventoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductInventoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductInventoryRecordData({
  String? type,
  int? quantityChange,
  DateTime? timestamp,
  int? previousStock,
  int? newStock,
  DocumentReference? userReference,
  String? note,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'type': type,
      'quantity_change': quantityChange,
      'timestamp': timestamp,
      'previous_stock': previousStock,
      'new_stock': newStock,
      'user_reference': userReference,
      'note': note,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductInventoryRecordDocumentEquality
    implements Equality<ProductInventoryRecord> {
  const ProductInventoryRecordDocumentEquality();

  @override
  bool equals(ProductInventoryRecord? e1, ProductInventoryRecord? e2) {
    return e1?.type == e2?.type &&
        e1?.quantityChange == e2?.quantityChange &&
        e1?.timestamp == e2?.timestamp &&
        e1?.previousStock == e2?.previousStock &&
        e1?.newStock == e2?.newStock &&
        e1?.userReference == e2?.userReference &&
        e1?.note == e2?.note;
  }

  @override
  int hash(ProductInventoryRecord? e) => const ListEquality().hash([
        e?.type,
        e?.quantityChange,
        e?.timestamp,
        e?.previousStock,
        e?.newStock,
        e?.userReference,
        e?.note
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductInventoryRecord;
}
