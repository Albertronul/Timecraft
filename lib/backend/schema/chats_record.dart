import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatsRecord extends FirestoreRecord {
  ChatsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userid" field.
  List<DocumentReference>? _userid;
  List<DocumentReference> get userid => _userid ?? const [];
  bool hasUserid() => _userid != null;

  // "lasmessage" field.
  String? _lasmessage;
  String get lasmessage => _lasmessage ?? '';
  bool hasLasmessage() => _lasmessage != null;

  // "UserNames" field.
  List<String>? _userNames;
  List<String> get userNames => _userNames ?? const [];
  bool hasUserNames() => _userNames != null;

  // "Timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "LastMessageSeenBy" field.
  List<DocumentReference>? _lastMessageSeenBy;
  List<DocumentReference> get lastMessageSeenBy =>
      _lastMessageSeenBy ?? const [];
  bool hasLastMessageSeenBy() => _lastMessageSeenBy != null;

  void _initializeFields() {
    _userid = getDataList(snapshotData['userid']);
    _lasmessage = snapshotData['lasmessage'] as String?;
    _userNames = getDataList(snapshotData['UserNames']);
    _timestamp = snapshotData['Timestamp'] as DateTime?;
    _lastMessageSeenBy = getDataList(snapshotData['LastMessageSeenBy']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chats');

  static Stream<ChatsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatsRecord.fromSnapshot(s));

  static Future<ChatsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatsRecord.fromSnapshot(s));

  static ChatsRecord fromSnapshot(DocumentSnapshot snapshot) => ChatsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatsRecordData({
  String? lasmessage,
  DateTime? timestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'lasmessage': lasmessage,
      'Timestamp': timestamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatsRecordDocumentEquality implements Equality<ChatsRecord> {
  const ChatsRecordDocumentEquality();

  @override
  bool equals(ChatsRecord? e1, ChatsRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.userid, e2?.userid) &&
        e1?.lasmessage == e2?.lasmessage &&
        listEquality.equals(e1?.userNames, e2?.userNames) &&
        e1?.timestamp == e2?.timestamp &&
        listEquality.equals(e1?.lastMessageSeenBy, e2?.lastMessageSeenBy);
  }

  @override
  int hash(ChatsRecord? e) => const ListEquality().hash([
        e?.userid,
        e?.lasmessage,
        e?.userNames,
        e?.timestamp,
        e?.lastMessageSeenBy
      ]);

  @override
  bool isValidKey(Object? o) => o is ChatsRecord;
}
