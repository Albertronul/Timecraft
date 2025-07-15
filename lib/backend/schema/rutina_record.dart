import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RutinaRecord extends FirestoreRecord {
  RutinaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "delete" field.
  bool? _delete;
  bool get delete => _delete ?? false;
  bool hasDelete() => _delete != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "created" field.
  DateTime? _created;
  DateTime? get created => _created;
  bool hasCreated() => _created != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  bool hasDate() => _date != null;

  // "hour" field.
  String? _hour;
  String get hour => _hour ?? '';
  bool hasHour() => _hour != null;

  // "order" field.
  List<DocumentReference>? _order;
  List<DocumentReference> get order => _order ?? const [];
  bool hasOrder() => _order != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _delete = snapshotData['delete'] as bool?;
    _user = snapshotData['user'] as DocumentReference?;
    _created = snapshotData['created'] as DateTime?;
    _date = snapshotData['date'] as String?;
    _hour = snapshotData['hour'] as String?;
    _order = getDataList(snapshotData['order']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rutina');

  static Stream<RutinaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RutinaRecord.fromSnapshot(s));

  static Future<RutinaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RutinaRecord.fromSnapshot(s));

  static RutinaRecord fromSnapshot(DocumentSnapshot snapshot) => RutinaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RutinaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RutinaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RutinaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RutinaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRutinaRecordData({
  String? title,
  String? description,
  bool? delete,
  DocumentReference? user,
  DateTime? created,
  String? date,
  String? hour,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'delete': delete,
      'user': user,
      'created': created,
      'date': date,
      'hour': hour,
    }.withoutNulls,
  );

  return firestoreData;
}

class RutinaRecordDocumentEquality implements Equality<RutinaRecord> {
  const RutinaRecordDocumentEquality();

  @override
  bool equals(RutinaRecord? e1, RutinaRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.delete == e2?.delete &&
        e1?.user == e2?.user &&
        e1?.created == e2?.created &&
        e1?.date == e2?.date &&
        e1?.hour == e2?.hour &&
        listEquality.equals(e1?.order, e2?.order);
  }

  @override
  int hash(RutinaRecord? e) => const ListEquality().hash([
        e?.title,
        e?.description,
        e?.delete,
        e?.user,
        e?.created,
        e?.date,
        e?.hour,
        e?.order
      ]);

  @override
  bool isValidKey(Object? o) => o is RutinaRecord;
}
