import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SubproductsRecord extends FirestoreRecord {
  SubproductsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "products" field.
  DocumentReference? _products;
  DocumentReference? get products => _products;
  bool hasProducts() => _products != null;

  // "amount" field.
  int? _amount;
  int get amount => _amount ?? 0;
  bool hasAmount() => _amount != null;

  // "subtotal" field.
  double? _subtotal;
  double get subtotal => _subtotal ?? 0.0;
  bool hasSubtotal() => _subtotal != null;

  // "user_cart" field.
  DocumentReference? _userCart;
  DocumentReference? get userCart => _userCart;
  bool hasUserCart() => _userCart != null;

  void _initializeFields() {
    _products = snapshotData['products'] as DocumentReference?;
    _amount = castToType<int>(snapshotData['amount']);
    _subtotal = castToType<double>(snapshotData['subtotal']);
    _userCart = snapshotData['user_cart'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('subproducts');

  static Stream<SubproductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SubproductsRecord.fromSnapshot(s));

  static Future<SubproductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SubproductsRecord.fromSnapshot(s));

  static SubproductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SubproductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SubproductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SubproductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SubproductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SubproductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSubproductsRecordData({
  DocumentReference? products,
  int? amount,
  double? subtotal,
  DocumentReference? userCart,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'products': products,
      'amount': amount,
      'subtotal': subtotal,
      'user_cart': userCart,
    }.withoutNulls,
  );

  return firestoreData;
}

class SubproductsRecordDocumentEquality implements Equality<SubproductsRecord> {
  const SubproductsRecordDocumentEquality();

  @override
  bool equals(SubproductsRecord? e1, SubproductsRecord? e2) {
    return e1?.products == e2?.products &&
        e1?.amount == e2?.amount &&
        e1?.subtotal == e2?.subtotal &&
        e1?.userCart == e2?.userCart;
  }

  @override
  int hash(SubproductsRecord? e) => const ListEquality()
      .hash([e?.products, e?.amount, e?.subtotal, e?.userCart]);

  @override
  bool isValidKey(Object? o) => o is SubproductsRecord;
}
