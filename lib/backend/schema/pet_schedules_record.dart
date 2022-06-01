import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'pet_schedules_record.g.dart';

abstract class PetSchedulesRecord
    implements Built<PetSchedulesRecord, PetSchedulesRecordBuilder> {
  static Serializer<PetSchedulesRecord> get serializer =>
      _$petSchedulesRecordSerializer;

  @nullable
  String get name;

  @nullable
  String get description;

  @nullable
  @BuiltValueField(wireName: 'scheduled_at')
  DateTime get scheduledAt;

  @nullable
  int get duration;

  @nullable
  @BuiltValueField(wireName: 'duration_unit')
  String get durationUnit;

  @nullable
  @BuiltValueField(wireName: 'pet_uid')
  DocumentReference get petUid;

  @nullable
  LatLng get location;

  @nullable
  @BuiltValueField(wireName: 'created_at')
  DateTime get createdAt;

  @nullable
  @BuiltValueField(wireName: 'owner_uid')
  DocumentReference get ownerUid;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PetSchedulesRecordBuilder builder) => builder
    ..name = ''
    ..description = ''
    ..duration = 0
    ..durationUnit = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pet_schedules');

  static Stream<PetSchedulesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PetSchedulesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  PetSchedulesRecord._();
  factory PetSchedulesRecord(
          [void Function(PetSchedulesRecordBuilder) updates]) =
      _$PetSchedulesRecord;

  static PetSchedulesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPetSchedulesRecordData({
  String name,
  String description,
  DateTime scheduledAt,
  int duration,
  String durationUnit,
  DocumentReference petUid,
  LatLng location,
  DateTime createdAt,
  DocumentReference ownerUid,
}) =>
    serializers.toFirestore(
        PetSchedulesRecord.serializer,
        PetSchedulesRecord((p) => p
          ..name = name
          ..description = description
          ..scheduledAt = scheduledAt
          ..duration = duration
          ..durationUnit = durationUnit
          ..petUid = petUid
          ..location = location
          ..createdAt = createdAt
          ..ownerUid = ownerUid));
