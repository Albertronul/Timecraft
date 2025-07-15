import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DatahealthRecord extends FirestoreRecord {
  DatahealthRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "kcal" field.
  String? _kcal;
  String get kcal => _kcal ?? '';
  bool hasKcal() => _kcal != null;

  // "weight" field.
  String? _weight;
  String get weight => _weight ?? '';
  bool hasWeight() => _weight != null;

  // "kcalpercent" field.
  int? _kcalpercent;
  int get kcalpercent => _kcalpercent ?? 0;
  bool hasKcalpercent() => _kcalpercent != null;

  // "weightpercent" field.
  int? _weightpercent;
  int get weightpercent => _weightpercent ?? 0;
  bool hasWeightpercent() => _weightpercent != null;

  void _initializeFields() {
    _kcal = snapshotData['kcal'] as String?;
    _weight = snapshotData['weight'] as String?;
    _kcalpercent = castToType<int>(snapshotData['kcalpercent']);
    _weightpercent = castToType<int>(snapshotData['weightpercent']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('datahealth');

  static Stream<DatahealthRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DatahealthRecord.fromSnapshot(s));

  static Future<DatahealthRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DatahealthRecord.fromSnapshot(s));

  static DatahealthRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DatahealthRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DatahealthRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DatahealthRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DatahealthRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DatahealthRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDatahealthRecordData({
  String? kcal,
  String? weight,
  int? kcalpercent,
  int? weightpercent,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'kcal': kcal,
      'weight': weight,
      'kcalpercent': kcalpercent,
      'weightpercent': weightpercent,
    }.withoutNulls,
  );

  return firestoreData;
}

class DatahealthRecordDocumentEquality implements Equality<DatahealthRecord> {
  const DatahealthRecordDocumentEquality();

  @override
  bool equals(DatahealthRecord? e1, DatahealthRecord? e2) {
    return e1?.kcal == e2?.kcal &&
        e1?.weight == e2?.weight &&
        e1?.kcalpercent == e2?.kcalpercent &&
        e1?.weightpercent == e2?.weightpercent;
  }

  @override
  int hash(DatahealthRecord? e) => const ListEquality()
      .hash([e?.kcal, e?.weight, e?.kcalpercent, e?.weightpercent]);

  @override
  bool isValidKey(Object? o) => o is DatahealthRecord;
}
