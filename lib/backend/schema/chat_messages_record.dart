import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'chat_messages_record.g.dart';

abstract class ChatMessagesRecord
    implements Built<ChatMessagesRecord, ChatMessagesRecordBuilder> {
  static Serializer<ChatMessagesRecord> get serializer =>
      _$chatMessagesRecordSerializer;

  @nullable
  String get text;

  @nullable
  String get image;

  @nullable
  @BuiltValueField(wireName: 'is_response')
  bool get isResponse;

  @nullable
  @BuiltValueField(wireName: 'created_at')
  DateTime get createdAt;

  @nullable
  @BuiltValueField(wireName: 'user_name')
  String get userName;

  @nullable
  @BuiltValueField(wireName: 'admin_name')
  String get adminName;

  @nullable
  @BuiltValueField(wireName: 'customer_uid')
  DocumentReference get customerUid;

  @nullable
  @BuiltValueField(wireName: 'ranger_uid')
  DocumentReference get rangerUid;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

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
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ChatMessagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  ChatMessagesRecord._();
  factory ChatMessagesRecord(
          [void Function(ChatMessagesRecordBuilder) updates]) =
      _$ChatMessagesRecord;

  static ChatMessagesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createChatMessagesRecordData({
  String text,
  String image,
  bool isResponse,
  DateTime createdAt,
  String userName,
  String adminName,
  DocumentReference customerUid,
  DocumentReference rangerUid,
}) =>
    serializers.toFirestore(
        ChatMessagesRecord.serializer,
        ChatMessagesRecord((c) => c
          ..text = text
          ..image = image
          ..isResponse = isResponse
          ..createdAt = createdAt
          ..userName = userName
          ..adminName = adminName
          ..customerUid = customerUid
          ..rangerUid = rangerUid));
