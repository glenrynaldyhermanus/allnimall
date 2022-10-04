import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'order_discounts_record.g.dart';

abstract class OrderDiscountsRecord
    implements Built<OrderDiscountsRecord, OrderDiscountsRecordBuilder> {
  static Serializer<OrderDiscountsRecord> get serializer =>
      _$orderDiscountsRecordSerializer;

  String? get name;

  double? get discount;

  String? get unit;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(OrderDiscountsRecordBuilder builder) => builder
    ..name = ''
    ..discount = 0.0
    ..unit = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('order_discounts')
          : FirebaseFirestore.instance.collectionGroup('order_discounts');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('order_discounts').doc();

  static Stream<OrderDiscountsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<OrderDiscountsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  OrderDiscountsRecord._();
  factory OrderDiscountsRecord(
          [void Function(OrderDiscountsRecordBuilder) updates]) =
      _$OrderDiscountsRecord;

  static OrderDiscountsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createOrderDiscountsRecordData({
  String? name,
  double? discount,
  String? unit,
}) {
  final firestoreData = serializers.toFirestore(
    OrderDiscountsRecord.serializer,
    OrderDiscountsRecord(
      (o) => o
        ..name = name
        ..discount = discount
        ..unit = unit,
    ),
  );

  return firestoreData;
}
