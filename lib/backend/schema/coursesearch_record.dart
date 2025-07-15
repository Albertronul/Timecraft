import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CoursesearchRecord extends FirestoreRecord {
  CoursesearchRecord._(
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

  // "userref" field.
  DocumentReference? _userref;
  DocumentReference? get userref => _userref;
  bool hasUserref() => _userref != null;

  // "courseref" field.
  DocumentReference? _courseref;
  DocumentReference? get courseref => _courseref;
  bool hasCourseref() => _courseref != null;

  // "complete" field.
  bool? _complete;
  bool get complete => _complete ?? false;
  bool hasComplete() => _complete != null;

  // "fitness" field.
  String? _fitness;
  String get fitness => _fitness ?? '';
  bool hasFitness() => _fitness != null;

  // "cooking" field.
  String? _cooking;
  String get cooking => _cooking ?? '';
  bool hasCooking() => _cooking != null;

  // "guitar" field.
  String? _guitar;
  String get guitar => _guitar ?? '';
  bool hasGuitar() => _guitar != null;

  // "fishing" field.
  String? _fishing;
  String get fishing => _fishing ?? '';
  bool hasFishing() => _fishing != null;

  // "camping" field.
  String? _camping;
  String get camping => _camping ?? '';
  bool hasCamping() => _camping != null;

  // "coding" field.
  String? _coding;
  String get coding => _coding ?? '';
  bool hasCoding() => _coding != null;

  // "archery" field.
  String? _archery;
  String get archery => _archery ?? '';
  bool hasArchery() => _archery != null;

  // "chess" field.
  String? _chess;
  String get chess => _chess ?? '';
  bool hasChess() => _chess != null;

  // "painting" field.
  String? _painting;
  String get painting => _painting ?? '';
  bool hasPainting() => _painting != null;

  // "gardening" field.
  String? _gardening;
  String get gardening => _gardening ?? '';
  bool hasGardening() => _gardening != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _description = snapshotData['description'] as String?;
    _userref = snapshotData['userref'] as DocumentReference?;
    _courseref = snapshotData['courseref'] as DocumentReference?;
    _complete = snapshotData['complete'] as bool?;
    _fitness = snapshotData['fitness'] as String?;
    _cooking = snapshotData['cooking'] as String?;
    _guitar = snapshotData['guitar'] as String?;
    _fishing = snapshotData['fishing'] as String?;
    _camping = snapshotData['camping'] as String?;
    _coding = snapshotData['coding'] as String?;
    _archery = snapshotData['archery'] as String?;
    _chess = snapshotData['chess'] as String?;
    _painting = snapshotData['painting'] as String?;
    _gardening = snapshotData['gardening'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('coursesearch');

  static Stream<CoursesearchRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CoursesearchRecord.fromSnapshot(s));

  static Future<CoursesearchRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CoursesearchRecord.fromSnapshot(s));

  static CoursesearchRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CoursesearchRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CoursesearchRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CoursesearchRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CoursesearchRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CoursesearchRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCoursesearchRecordData({
  String? title,
  String? description,
  DocumentReference? userref,
  DocumentReference? courseref,
  bool? complete,
  String? fitness,
  String? cooking,
  String? guitar,
  String? fishing,
  String? camping,
  String? coding,
  String? archery,
  String? chess,
  String? painting,
  String? gardening,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'description': description,
      'userref': userref,
      'courseref': courseref,
      'complete': complete,
      'fitness': fitness,
      'cooking': cooking,
      'guitar': guitar,
      'fishing': fishing,
      'camping': camping,
      'coding': coding,
      'archery': archery,
      'chess': chess,
      'painting': painting,
      'gardening': gardening,
    }.withoutNulls,
  );

  return firestoreData;
}

class CoursesearchRecordDocumentEquality
    implements Equality<CoursesearchRecord> {
  const CoursesearchRecordDocumentEquality();

  @override
  bool equals(CoursesearchRecord? e1, CoursesearchRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.description == e2?.description &&
        e1?.userref == e2?.userref &&
        e1?.courseref == e2?.courseref &&
        e1?.complete == e2?.complete &&
        e1?.fitness == e2?.fitness &&
        e1?.cooking == e2?.cooking &&
        e1?.guitar == e2?.guitar &&
        e1?.fishing == e2?.fishing &&
        e1?.camping == e2?.camping &&
        e1?.coding == e2?.coding &&
        e1?.archery == e2?.archery &&
        e1?.chess == e2?.chess &&
        e1?.painting == e2?.painting &&
        e1?.gardening == e2?.gardening;
  }

  @override
  int hash(CoursesearchRecord? e) => const ListEquality().hash([
        e?.title,
        e?.description,
        e?.userref,
        e?.courseref,
        e?.complete,
        e?.fitness,
        e?.cooking,
        e?.guitar,
        e?.fishing,
        e?.camping,
        e?.coding,
        e?.archery,
        e?.chess,
        e?.painting,
        e?.gardening
      ]);

  @override
  bool isValidKey(Object? o) => o is CoursesearchRecord;
}
