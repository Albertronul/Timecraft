import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Datahealth2Record extends FirestoreRecord {
  Datahealth2Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "weight" field.
  String? _weight;
  String get weight => _weight ?? '';
  bool hasWeight() => _weight != null;

  // "wieghtpercent" field.
  int? _wieghtpercent;
  int get wieghtpercent => _wieghtpercent ?? 0;
  bool hasWieghtpercent() => _wieghtpercent != null;

  void _initializeFields() {
    _weight = snapshotData['weight'] as String?;
    _wieghtpercent = castToType<int>(snapshotData['wieghtpercent']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('datahealth2');

  static Stream<Datahealth2Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Datahealth2Record.fromSnapshot(s));

  static Future<Datahealth2Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Datahealth2Record.fromSnapshot(s));

  static Datahealth2Record fromSnapshot(DocumentSnapshot snapshot) =>
      Datahealth2Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Datahealth2Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Datahealth2Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Datahealth2Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Datahealth2Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDatahealth2RecordData({
  String? weight,
  int? wieghtpercent,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'weight': weight,
      'wieghtpercent': wieghtpercent,
    }.withoutNulls,
  );

  return firestoreData;
}

class Datahealth2RecordDocumentEquality implements Equality<Datahealth2Record> {
  const Datahealth2RecordDocumentEquality();

  @override
  bool equals(Datahealth2Record? e1, Datahealth2Record? e2) {
    return e1?.weight == e2?.weight && e1?.wieghtpercent == e2?.wieghtpercent;
  }

  @override
  int hash(Datahealth2Record? e) =>
      const ListEquality().hash([e?.weight, e?.wieghtpercent]);

  @override
  bool isValidKey(Object? o) => o is Datahealth2Record;
}
