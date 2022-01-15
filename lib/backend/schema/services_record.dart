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
  String get name;

  @nullable
  DocumentReference get category;

  @nullable
  double get price;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ServicesRecordBuilder builder) => builder
    ..name = ''
    ..price = 0.0;

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
  String name,
  DocumentReference category,
  double price,
}) =>
    serializers.toFirestore(
        ServicesRecord.serializer,
        ServicesRecord((s) => s
          ..name = name
          ..category = category
          ..price = price));
