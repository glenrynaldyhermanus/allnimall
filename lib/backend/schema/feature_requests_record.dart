import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'feature_requests_record.g.dart';

abstract class FeatureRequestsRecord
    implements Built<FeatureRequestsRecord, FeatureRequestsRecordBuilder> {
  static Serializer<FeatureRequestsRecord> get serializer =>
      _$featureRequestsRecordSerializer;

  @nullable
  String get feedback;

  @nullable
  @BuiltValueField(wireName: 'created_at')
  DateTime get createdAt;

  @nullable
  String get response;

  @nullable
  String get status;

  @nullable
  @BuiltValueField(wireName: 'user_uid')
  DocumentReference get userUid;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(FeatureRequestsRecordBuilder builder) =>
      builder
        ..feedback = ''
        ..response = ''
        ..status = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('feature_requests');

  static Stream<FeatureRequestsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<FeatureRequestsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  FeatureRequestsRecord._();
  factory FeatureRequestsRecord(
          [void Function(FeatureRequestsRecordBuilder) updates]) =
      _$FeatureRequestsRecord;

  static FeatureRequestsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createFeatureRequestsRecordData({
  String feedback,
  DateTime createdAt,
  String response,
  String status,
  DocumentReference userUid,
}) =>
    serializers.toFirestore(
        FeatureRequestsRecord.serializer,
        FeatureRequestsRecord((f) => f
          ..feedback = feedback
          ..createdAt = createdAt
          ..response = response
          ..status = status
          ..userUid = userUid));
