import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'service_categories_record.g.dart';

abstract class ServiceCategoriesRecord
    implements Built<ServiceCategoriesRecord, ServiceCategoriesRecordBuilder> {
  static Serializer<ServiceCategoriesRecord> get serializer =>
      _$serviceCategoriesRecordSerializer;

  String? get name;

  String? get type;

  @BuiltValueField(wireName: 'is_active')
  bool? get isActive;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ServiceCategoriesRecordBuilder builder) =>
      builder
        ..name = ''
        ..type = ''
        ..isActive = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('service_categories');

  static Stream<ServiceCategoriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ServiceCategoriesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ServiceCategoriesRecord._();
  factory ServiceCategoriesRecord(
          [void Function(ServiceCategoriesRecordBuilder) updates]) =
      _$ServiceCategoriesRecord;

  static ServiceCategoriesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createServiceCategoriesRecordData({
  String? name,
  String? type,
  bool? isActive,
}) {
  final firestoreData = serializers.toFirestore(
    ServiceCategoriesRecord.serializer,
    ServiceCategoriesRecord(
      (s) => s
        ..name = name
        ..type = type
        ..isActive = isActive,
    ),
  );

  return firestoreData;
}
