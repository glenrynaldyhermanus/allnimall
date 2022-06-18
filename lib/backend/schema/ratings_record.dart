import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ratings_record.g.dart';

abstract class RatingsRecord
    implements Built<RatingsRecord, RatingsRecordBuilder> {
  static Serializer<RatingsRecord> get serializer => _$ratingsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'order_uid')
  DocumentReference get orderUid;

  @nullable
  @BuiltValueField(wireName: 'order_no')
  String get orderNo;

  @nullable
  int get rate;

  @nullable
  String get comment;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  DocumentReference get parentReference => reference.parent.parent;

  static void _initializeBuilder(RatingsRecordBuilder builder) => builder
    ..orderNo = ''
    ..rate = 0
    ..comment = '';

  static Query<Map<String, dynamic>> collection([DocumentReference parent]) =>
      parent != null
          ? parent.collection('ratings')
          : FirebaseFirestore.instance.collectionGroup('ratings');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('ratings').doc();

  static Stream<RatingsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<RatingsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  RatingsRecord._();
  factory RatingsRecord([void Function(RatingsRecordBuilder) updates]) =
      _$RatingsRecord;

  static RatingsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createRatingsRecordData({
  DocumentReference orderUid,
  String orderNo,
  int rate,
  String comment,
}) =>
    serializers.toFirestore(
        RatingsRecord.serializer,
        RatingsRecord((r) => r
          ..orderUid = orderUid
          ..orderNo = orderNo
          ..rate = rate
          ..comment = comment));
