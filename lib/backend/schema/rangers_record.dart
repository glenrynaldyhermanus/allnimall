import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'rangers_record.g.dart';

abstract class RangersRecord
    implements Built<RangersRecord, RangersRecordBuilder> {
  static Serializer<RangersRecord> get serializer => _$rangersRecordSerializer;

  String? get uid;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get email;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  String? get role;

  LatLng? get latlng;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RangersRecordBuilder builder) => builder
    ..uid = ''
    ..displayName = ''
    ..photoUrl = ''
    ..email = ''
    ..phoneNumber = ''
    ..role = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('rangers');

  static Stream<RangersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RangersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RangersRecord._();
  factory RangersRecord([void Function(RangersRecordBuilder) updates]) =
      _$RangersRecord;

  static RangersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRangersRecordData({
  String? uid,
  String? displayName,
  String? photoUrl,
  String? email,
  DateTime? createdTime,
  String? phoneNumber,
  String? role,
  LatLng? latlng,
}) {
  final firestoreData = serializers.toFirestore(
    RangersRecord.serializer,
    RangersRecord(
      (r) => r
        ..uid = uid
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..email = email
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..role = role
        ..latlng = latlng,
    ),
  );

  return firestoreData;
}
