import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MotivationRecord extends FirestoreRecord {
  MotivationRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  void _initializeFields() {
    _photo = snapshotData['photo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('motivation');

  static Stream<MotivationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MotivationRecord.fromSnapshot(s));

  static Future<MotivationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MotivationRecord.fromSnapshot(s));

  static MotivationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MotivationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MotivationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MotivationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MotivationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MotivationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMotivationRecordData({
  String? photo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'photo': photo,
    }.withoutNulls,
  );

  return firestoreData;
}

class MotivationRecordDocumentEquality implements Equality<MotivationRecord> {
  const MotivationRecordDocumentEquality();

  @override
  bool equals(MotivationRecord? e1, MotivationRecord? e2) {
    return e1?.photo == e2?.photo;
  }

  @override
  int hash(MotivationRecord? e) => const ListEquality().hash([e?.photo]);

  @override
  bool isValidKey(Object? o) => o is MotivationRecord;
}
