import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'services_record.g.dart';

abstract class ServicesRecord
    implements Built<ServicesRecord, ServicesRecordBuilder> {
  static Serializer<ServicesRecord> get serializer =>
      _$servicesRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'category_uid')
  DocumentReference get categoryUid;

  @nullable
  String get name;

  @nullable
  double get fee;

  @nullable
  @BuiltValueField(wireName: 'category_name')
  String get categoryName;

  @nullable
  @BuiltValueField(wireName: 'is_active')
  bool get isActive;

  @nullable
  String get description;

  @nullable
  int get sequence;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ServicesRecordBuilder builder) => builder
    ..name = ''
    ..fee = 0.0
    ..categoryName = ''
    ..isActive = false
    ..description = ''
    ..sequence = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('services');

  static Stream<ServicesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ServicesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ServicesRecord._();
  factory ServicesRecord([void Function(ServicesRecordBuilder) updates]) =
      _$ServicesRecord;

  static ServicesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createServicesRecordData({
  DocumentReference categoryUid,
  String name,
  double fee,
  String categoryName,
  bool isActive,
  String description,
  int sequence,
}) =>
    serializers.toFirestore(
        ServicesRecord.serializer,
        ServicesRecord((s) => s
          ..categoryUid = categoryUid
          ..name = name
          ..fee = fee
          ..categoryName = categoryName
          ..isActive = isActive
          ..description = description
          ..sequence = sequence));
