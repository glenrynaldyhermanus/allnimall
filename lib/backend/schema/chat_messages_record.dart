import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'chat_messages_record.g.dart';

abstract class ChatMessagesRecord
    implements Built<ChatMessagesRecord, ChatMessagesRecordBuilder> {
  static Serializer<ChatMessagesRecord> get serializer =>
      _$chatMessagesRecordSerializer;

  String? get text;

  String? get image;

  @BuiltValueField(wireName: 'is_response')
  bool? get isResponse;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: 'user_name')
  String? get userName;

  @BuiltValueField(wireName: 'admin_name')
  String? get adminName;

  @BuiltValueField(wireName: 'customer_uid')
  DocumentReference? get customerUid;

  @BuiltValueField(wireName: 'ranger_uid')
  DocumentReference? get rangerUid;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ChatMessagesRecordBuilder builder) => builder
    ..text = ''
    ..image = ''
    ..isResponse = false
    ..userName = ''
    ..adminName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chat_messages');

  static Stream<ChatMessagesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ChatMessagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ChatMessagesRecord._();
  factory ChatMessagesRecord(
          [void Function(ChatMessagesRecordBuilder) updates]) =
      _$ChatMessagesRecord;

  static ChatMessagesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createChatMessagesRecordData({
  String? text,
  String? image,
  bool? isResponse,
  DateTime? createdAt,
  String? userName,
  String? adminName,
  DocumentReference? customerUid,
  DocumentReference? rangerUid,
}) {
  final firestoreData = serializers.toFirestore(
    ChatMessagesRecord.serializer,
    ChatMessagesRecord(
      (c) => c
        ..text = text
        ..image = image
        ..isResponse = isResponse
        ..createdAt = createdAt
        ..userName = userName
        ..adminName = adminName
        ..customerUid = customerUid
        ..rangerUid = rangerUid,
    ),
  );

  return firestoreData;
}
