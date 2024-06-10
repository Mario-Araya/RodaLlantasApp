import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "stock" field.
  bool? _stock;
  bool get stock => _stock ?? false;
  bool hasStock() => _stock != null;

  // "client" field.
  DocumentReference? _client;
  DocumentReference? get client => _client;
  bool hasClient() => _client != null;

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  bool hasTotal() => _total != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _stock = snapshotData['stock'] as bool?;
    _client = snapshotData['client'] as DocumentReference?;
    _total = castToType<double>(snapshotData['total']);
    _status = snapshotData['status'] as String?;
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
  bool? stock,
  DocumentReference? client,
  double? total,
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'stock': stock,
      'client': client,
      'total': total,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    return e1?.stock == e2?.stock &&
        e1?.client == e2?.client &&
        e1?.total == e2?.total &&
        e1?.status == e2?.status;
  }

  @override
  int hash(OrdersRecord? e) =>
      const ListEquality().hash([e?.stock, e?.client, e?.total, e?.status]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
