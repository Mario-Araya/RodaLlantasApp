import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class QuotesRecord extends FirestoreRecord {
  QuotesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "service" field.
  DocumentReference? _service;
  DocumentReference? get service => _service;
  bool hasService() => _service != null;

  // "client" field.
  DocumentReference? _client;
  DocumentReference? get client => _client;
  bool hasClient() => _client != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "car_model" field.
  String? _carModel;
  String get carModel => _carModel ?? '';
  bool hasCarModel() => _carModel != null;

  // "car_plate" field.
  String? _carPlate;
  String get carPlate => _carPlate ?? '';
  bool hasCarPlate() => _carPlate != null;

  // "car_brand" field.
  String? _carBrand;
  String get carBrand => _carBrand ?? '';
  bool hasCarBrand() => _carBrand != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "name_service" field.
  String? _nameService;
  String get nameService => _nameService ?? '';
  bool hasNameService() => _nameService != null;

  void _initializeFields() {
    _status = snapshotData['status'] as String?;
    _service = snapshotData['service'] as DocumentReference?;
    _client = snapshotData['client'] as DocumentReference?;
    _description = snapshotData['description'] as String?;
    _carModel = snapshotData['car_model'] as String?;
    _carPlate = snapshotData['car_plate'] as String?;
    _carBrand = snapshotData['car_brand'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _nameService = snapshotData['name_service'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('quotes');

  static Stream<QuotesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => QuotesRecord.fromSnapshot(s));

  static Future<QuotesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => QuotesRecord.fromSnapshot(s));

  static QuotesRecord fromSnapshot(DocumentSnapshot snapshot) => QuotesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static QuotesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      QuotesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'QuotesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is QuotesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuotesRecordData({
  String? status,
  DocumentReference? service,
  DocumentReference? client,
  String? description,
  String? carModel,
  String? carPlate,
  String? carBrand,
  DateTime? date,
  String? nameService,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'status': status,
      'service': service,
      'client': client,
      'description': description,
      'car_model': carModel,
      'car_plate': carPlate,
      'car_brand': carBrand,
      'date': date,
      'name_service': nameService,
    }.withoutNulls,
  );

  return firestoreData;
}

class QuotesRecordDocumentEquality implements Equality<QuotesRecord> {
  const QuotesRecordDocumentEquality();

  @override
  bool equals(QuotesRecord? e1, QuotesRecord? e2) {
    return e1?.status == e2?.status &&
        e1?.service == e2?.service &&
        e1?.client == e2?.client &&
        e1?.description == e2?.description &&
        e1?.carModel == e2?.carModel &&
        e1?.carPlate == e2?.carPlate &&
        e1?.carBrand == e2?.carBrand &&
        e1?.date == e2?.date &&
        e1?.nameService == e2?.nameService;
  }

  @override
  int hash(QuotesRecord? e) => const ListEquality().hash([
        e?.status,
        e?.service,
        e?.client,
        e?.description,
        e?.carModel,
        e?.carPlate,
        e?.carBrand,
        e?.date,
        e?.nameService
      ]);

  @override
  bool isValidKey(Object? o) => o is QuotesRecord;
}
