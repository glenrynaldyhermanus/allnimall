import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'order_services_record.g.dart';

abstract class OrderServicesRecord
    implements Built<OrderServicesRecord, OrderServicesRecordBuilder> {
  static Serializer<OrderServicesRecord> get serializer =>
      _$orderServicesRecordSerializer;

  @nullable
  String get name;

  @nullable
  double get fee;

  @nullable
  @BuiltValueField(wireName: 'category_name')
  String get categoryName;

  @nullable
  int get quantity;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  DocumentReference get parentReference => reference.parent.parent;

  static void _initializeBuilder(OrderServicesRecordBuilder builder) => builder
    ..name = ''
    ..fee = 0.0
    ..categoryName = ''
    ..quantity = 0;

  static Query<Map<String, dynamic>> collection([DocumentReference parent]) =>
      parent != null
          ? parent.collection('order_services')
          : FirebaseFirestore.instance.collectionGroup('order_services');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('order_services').doc();

  static Stream<OrderServicesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<OrderServicesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  OrderServicesRecord._();
  factory OrderServicesRecord(
          [void Function(OrderServicesRecordBuilder) updates]) =
      _$OrderServicesRecord;

  static OrderServicesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createOrderServicesRecordData({
  String name,
  double fee,
  String categoryName,
  int quantity,
}) =>
    serializers.toFirestore(
        OrderServicesRecord.serializer,
        OrderServicesRecord((o) => o
          ..name = name
          ..fee = fee
          ..categoryName = categoryName
          ..quantity = quantity));
