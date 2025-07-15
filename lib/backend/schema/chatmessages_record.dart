import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatmessagesRecord extends FirestoreRecord {
  ChatmessagesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "TimeStamp" field.
  DateTime? _timeStamp;
  DateTime? get timeStamp => _timeStamp;
  bool hasTimeStamp() => _timeStamp != null;

  // "uidOfSender" field.
  DocumentReference? _uidOfSender;
  DocumentReference? get uidOfSender => _uidOfSender;
  bool hasUidOfSender() => _uidOfSender != null;

  // "NameOfSender" field.
  String? _nameOfSender;
  String get nameOfSender => _nameOfSender ?? '';
  bool hasNameOfSender() => _nameOfSender != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _message = snapshotData['message'] as String?;
    _timeStamp = snapshotData['TimeStamp'] as DateTime?;
    _uidOfSender = snapshotData['uidOfSender'] as DocumentReference?;
    _nameOfSender = snapshotData['NameOfSender'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Chatmessages')
          : FirebaseFirestore.instance.collectionGroup('Chatmessages');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Chatmessages').doc(id);

  static Stream<ChatmessagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatmessagesRecord.fromSnapshot(s));

  static Future<ChatmessagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatmessagesRecord.fromSnapshot(s));

  static ChatmessagesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChatmessagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatmessagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatmessagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatmessagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatmessagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatmessagesRecordData({
  String? message,
  DateTime? timeStamp,
  DocumentReference? uidOfSender,
  String? nameOfSender,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'message': message,
      'TimeStamp': timeStamp,
      'uidOfSender': uidOfSender,
      'NameOfSender': nameOfSender,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatmessagesRecordDocumentEquality
    implements Equality<ChatmessagesRecord> {
  const ChatmessagesRecordDocumentEquality();

  @override
  bool equals(ChatmessagesRecord? e1, ChatmessagesRecord? e2) {
    return e1?.message == e2?.message &&
        e1?.timeStamp == e2?.timeStamp &&
        e1?.uidOfSender == e2?.uidOfSender &&
        e1?.nameOfSender == e2?.nameOfSender;
  }

  @override
  int hash(ChatmessagesRecord? e) => const ListEquality()
      .hash([e?.message, e?.timeStamp, e?.uidOfSender, e?.nameOfSender]);

  @override
  bool isValidKey(Object? o) => o is ChatmessagesRecord;
}
