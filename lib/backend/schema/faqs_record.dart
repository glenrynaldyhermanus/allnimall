import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'faqs_record.g.dart';

abstract class FaqsRecord implements Built<FaqsRecord, FaqsRecordBuilder> {
  static Serializer<FaqsRecord> get serializer => _$faqsRecordSerializer;

  @nullable
  String get question;

  @nullable
  String get answer;

  @nullable
  @BuiltValueField(wireName: 'reference_url')
  String get referenceUrl;

  @nullable
  @BuiltValueField(wireName: 'reference_name')
  String get referenceName;

  @nullable
  @BuiltValueField(wireName: 'visit_count')
  int get visitCount;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(FaqsRecordBuilder builder) => builder
    ..question = ''
    ..answer = ''
    ..referenceUrl = ''
    ..referenceName = ''
    ..visitCount = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('faqs');

  static Stream<FaqsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<FaqsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  FaqsRecord._();
  factory FaqsRecord([void Function(FaqsRecordBuilder) updates]) = _$FaqsRecord;

  static FaqsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createFaqsRecordData({
  String question,
  String answer,
  String referenceUrl,
  String referenceName,
  int visitCount,
}) =>
    serializers.toFirestore(
        FaqsRecord.serializer,
        FaqsRecord((f) => f
          ..question = question
          ..answer = answer
          ..referenceUrl = referenceUrl
          ..referenceName = referenceName
          ..visitCount = visitCount));
