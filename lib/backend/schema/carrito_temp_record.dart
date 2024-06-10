import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class CarritoTempRecord extends FirestoreRecord {
  CarritoTempRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "list_product" field.
  List<DocumentReference>? _listProduct;
  List<DocumentReference> get listProduct => _listProduct ?? const [];
  bool hasListProduct() => _listProduct != null;

  // "ref_user" field.
  DocumentReference? _refUser;
  DocumentReference? get refUser => _refUser;
  bool hasRefUser() => _refUser != null;

  void _initializeFields() {
    _date = snapshotData['date'] as DateTime?;
    _listProduct = getDataList(snapshotData['list_product']);
    _refUser = snapshotData['ref_user'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('carrito_temp');

  static Stream<CarritoTempRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CarritoTempRecord.fromSnapshot(s));

  static Future<CarritoTempRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CarritoTempRecord.fromSnapshot(s));

  static CarritoTempRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CarritoTempRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CarritoTempRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CarritoTempRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CarritoTempRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CarritoTempRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCarritoTempRecordData({
  DateTime? date,
  DocumentReference? refUser,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'ref_user': refUser,
    }.withoutNulls,
  );

  return firestoreData;
}

class CarritoTempRecordDocumentEquality implements Equality<CarritoTempRecord> {
  const CarritoTempRecordDocumentEquality();

  @override
  bool equals(CarritoTempRecord? e1, CarritoTempRecord? e2) {
    const listEquality = ListEquality();
    return e1?.date == e2?.date &&
        listEquality.equals(e1?.listProduct, e2?.listProduct) &&
        e1?.refUser == e2?.refUser;
  }

  @override
  int hash(CarritoTempRecord? e) =>
      const ListEquality().hash([e?.date, e?.listProduct, e?.refUser]);

  @override
  bool isValidKey(Object? o) => o is CarritoTempRecord;
}
