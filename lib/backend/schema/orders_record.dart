import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'orders_record.g.dart';

abstract class OrdersRecord
    implements Built<OrdersRecord, OrdersRecordBuilder> {
  static Serializer<OrdersRecord> get serializer => _$ordersRecordSerializer;

  @BuiltValueField(wireName: 'created_at')
  DateTime? get createdAt;

  @BuiltValueField(wireName: 'order_no')
  String? get orderNo;

  @BuiltValueField(wireName: 'pet_category')
  String? get petCategory;

  String? get name;

  @BuiltValueField(wireName: 'scheduled_at')
  DateTime? get scheduledAt;

  String? get service;

  int? get quantity;

  double? get amount;

  String? get status;

  @BuiltValueField(wireName: 'customer_address')
  String? get customerAddress;

  @BuiltValueField(wireName: 'customer_latlng')
  LatLng? get customerLatlng;

  @BuiltValueField(wireName: 'customer_name')
  String? get customerName;

  @BuiltValueField(wireName: 'payment_status')
  String? get paymentStatus;

  @BuiltValueField(wireName: 'preffered_time')
  String? get prefferedTime;

  double? get discount;

  String? get notes;

  @BuiltValueField(wireName: 'start_time')
  String? get startTime;

  @BuiltValueField(wireName: 'end_time')
  String? get endTime;

  @BuiltValueField(wireName: 'ranger_name')
  String? get rangerName;

  @BuiltValueField(wireName: 'ranger_phone')
  String? get rangerPhone;

  @BuiltValueField(wireName: 'ranger_profile_picture')
  String? get rangerProfilePicture;

  @BuiltValueField(wireName: 'confirmed_at')
  DateTime? get confirmedAt;

  @BuiltValueField(wireName: 'customer_phone')
  String? get customerPhone;

  @BuiltValueField(wireName: 'ontheway_at')
  DateTime? get onthewayAt;

  @BuiltValueField(wireName: 'customer_uid')
  DocumentReference? get customerUid;

  @BuiltValueField(wireName: 'ranger_uid')
  DocumentReference? get rangerUid;

  @BuiltValueField(wireName: 'working_at')
  DateTime? get workingAt;

  @BuiltValueField(wireName: 'finish_at')
  DateTime? get finishAt;

  @BuiltValueField(wireName: 'paid_at')
  DateTime? get paidAt;

  @BuiltValueField(wireName: 'payment_method')
  String? get paymentMethod;

  @BuiltValueField(wireName: 'cancelled_at')
  DateTime? get cancelledAt;

  int? get rate;

  String? get comment;

  @BuiltValueField(wireName: 'rejected_at')
  DateTime? get rejectedAt;

  @BuiltValueField(wireName: 'preferred_time')
  String? get preferredTime;

  @BuiltValueField(wireName: 'preferred_day')
  String? get preferredDay;

  @BuiltValueField(wireName: 'customer_city')
  String? get customerCity;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(OrdersRecordBuilder builder) => builder
    ..orderNo = ''
    ..petCategory = ''
    ..name = ''
    ..service = ''
    ..quantity = 0
    ..amount = 0.0
    ..status = ''
    ..customerAddress = ''
    ..customerName = ''
    ..paymentStatus = ''
    ..prefferedTime = ''
    ..discount = 0.0
    ..notes = ''
    ..startTime = ''
    ..endTime = ''
    ..rangerName = ''
    ..rangerPhone = ''
    ..rangerProfilePicture = ''
    ..customerPhone = ''
    ..paymentMethod = ''
    ..rate = 0
    ..comment = ''
    ..preferredTime = ''
    ..preferredDay = ''
    ..customerCity = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  OrdersRecord._();
  factory OrdersRecord([void Function(OrdersRecordBuilder) updates]) =
      _$OrdersRecord;

  static OrdersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createOrdersRecordData({
  DateTime? createdAt,
  String? orderNo,
  String? petCategory,
  String? name,
  DateTime? scheduledAt,
  String? service,
  int? quantity,
  double? amount,
  String? status,
  String? customerAddress,
  LatLng? customerLatlng,
  String? customerName,
  String? paymentStatus,
  String? prefferedTime,
  double? discount,
  String? notes,
  String? startTime,
  String? endTime,
  String? rangerName,
  String? rangerPhone,
  String? rangerProfilePicture,
  DateTime? confirmedAt,
  String? customerPhone,
  DateTime? onthewayAt,
  DocumentReference? customerUid,
  DocumentReference? rangerUid,
  DateTime? workingAt,
  DateTime? finishAt,
  DateTime? paidAt,
  String? paymentMethod,
  DateTime? cancelledAt,
  int? rate,
  String? comment,
  DateTime? rejectedAt,
  String? preferredTime,
  String? preferredDay,
  String? customerCity,
}) {
  final firestoreData = serializers.toFirestore(
    OrdersRecord.serializer,
    OrdersRecord(
      (o) => o
        ..createdAt = createdAt
        ..orderNo = orderNo
        ..petCategory = petCategory
        ..name = name
        ..scheduledAt = scheduledAt
        ..service = service
        ..quantity = quantity
        ..amount = amount
        ..status = status
        ..customerAddress = customerAddress
        ..customerLatlng = customerLatlng
        ..customerName = customerName
        ..paymentStatus = paymentStatus
        ..prefferedTime = prefferedTime
        ..discount = discount
        ..notes = notes
        ..startTime = startTime
        ..endTime = endTime
        ..rangerName = rangerName
        ..rangerPhone = rangerPhone
        ..rangerProfilePicture = rangerProfilePicture
        ..confirmedAt = confirmedAt
        ..customerPhone = customerPhone
        ..onthewayAt = onthewayAt
        ..customerUid = customerUid
        ..rangerUid = rangerUid
        ..workingAt = workingAt
        ..finishAt = finishAt
        ..paidAt = paidAt
        ..paymentMethod = paymentMethod
        ..cancelledAt = cancelledAt
        ..rate = rate
        ..comment = comment
        ..rejectedAt = rejectedAt
        ..preferredTime = preferredTime
        ..preferredDay = preferredDay
        ..customerCity = customerCity,
    ),
  );

  return firestoreData;
}
