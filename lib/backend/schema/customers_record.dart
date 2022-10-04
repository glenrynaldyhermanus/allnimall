import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'customers_record.g.dart';

abstract class CustomersRecord
    implements Built<CustomersRecord, CustomersRecordBuilder> {
  static Serializer<CustomersRecord> get serializer =>
      _$customersRecordSerializer;

  String? get uid;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'order_address')
  String? get orderAddress;

  @BuiltValueField(wireName: 'order_latlng')
  LatLng? get orderLatlng;

  DateTime? get birthdate;

  String? get gender;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CustomersRecordBuilder builder) => builder
    ..uid = ''
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..phoneNumber = ''
    ..orderAddress = ''
    ..gender = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('customers');

  static Stream<CustomersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CustomersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CustomersRecord._();
  factory CustomersRecord([void Function(CustomersRecordBuilder) updates]) =
      _$CustomersRecord;

  static CustomersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCustomersRecordData({
  String? uid,
  String? email,
  String? displayName,
  String? photoUrl,
  DateTime? createdTime,
  String? phoneNumber,
  String? orderAddress,
  LatLng? orderLatlng,
  DateTime? birthdate,
  String? gender,
}) {
  final firestoreData = serializers.toFirestore(
    CustomersRecord.serializer,
    CustomersRecord(
      (c) => c
        ..uid = uid
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..orderAddress = orderAddress
        ..orderLatlng = orderLatlng
        ..birthdate = birthdate
        ..gender = gender,
    ),
  );

  return firestoreData;
}
