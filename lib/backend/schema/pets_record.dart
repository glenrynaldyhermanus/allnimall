import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'pets_record.g.dart';

abstract class PetsRecord implements Built<PetsRecord, PetsRecordBuilder> {
  static Serializer<PetsRecord> get serializer => _$petsRecordSerializer;

  @nullable
  String get name;

  @nullable
  DateTime get birthdate;

  @nullable
  @BuiltValueField(wireName: 'owner_name')
  String get ownerName;

  @nullable
  double get weight;

  @nullable
  String get condition;

  @nullable
  @BuiltValueField(wireName: 'picture_url')
  String get pictureUrl;

  @nullable
  @BuiltValueField(wireName: 'has_vaccinated')
  bool get hasVaccinated;

  @nullable
  @BuiltValueField(wireName: 'has_sterilised')
  bool get hasSterilised;

  @nullable
  String get sex;

  @nullable
  @BuiltValueField(wireName: 'weight_unit')
  String get weightUnit;

  @nullable
  String get breed;

  @nullable
  @BuiltValueField(wireName: 'has_diarrhea')
  bool get hasDiarrhea;

  @nullable
  @BuiltValueField(wireName: 'has_earmites')
  bool get hasEarmites;

  @nullable
  @BuiltValueField(wireName: 'has_fleas')
  bool get hasFleas;

  @nullable
  @BuiltValueField(wireName: 'has_fungus')
  bool get hasFungus;

  @nullable
  @BuiltValueField(wireName: 'has_scabies')
  bool get hasScabies;

  @nullable
  @BuiltValueField(wireName: 'has_worms')
  bool get hasWorms;

  @nullable
  @BuiltValueField(wireName: 'owner_uid')
  DocumentReference get ownerUid;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PetsRecordBuilder builder) => builder
    ..name = ''
    ..ownerName = ''
    ..weight = 0.0
    ..condition = ''
    ..pictureUrl = ''
    ..hasVaccinated = false
    ..hasSterilised = false
    ..sex = ''
    ..weightUnit = ''
    ..breed = ''
    ..hasDiarrhea = false
    ..hasEarmites = false
    ..hasFleas = false
    ..hasFungus = false
    ..hasScabies = false
    ..hasWorms = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pets');

  static Stream<PetsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PetsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PetsRecord._();
  factory PetsRecord([void Function(PetsRecordBuilder) updates]) = _$PetsRecord;

  static PetsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPetsRecordData({
  String name,
  DateTime birthdate,
  String ownerName,
  double weight,
  String condition,
  String pictureUrl,
  bool hasVaccinated,
  bool hasSterilised,
  String sex,
  String weightUnit,
  String breed,
  bool hasDiarrhea,
  bool hasEarmites,
  bool hasFleas,
  bool hasFungus,
  bool hasScabies,
  bool hasWorms,
  DocumentReference ownerUid,
}) =>
    serializers.toFirestore(
        PetsRecord.serializer,
        PetsRecord((p) => p
          ..name = name
          ..birthdate = birthdate
          ..ownerName = ownerName
          ..weight = weight
          ..condition = condition
          ..pictureUrl = pictureUrl
          ..hasVaccinated = hasVaccinated
          ..hasSterilised = hasSterilised
          ..sex = sex
          ..weightUnit = weightUnit
          ..breed = breed
          ..hasDiarrhea = hasDiarrhea
          ..hasEarmites = hasEarmites
          ..hasFleas = hasFleas
          ..hasFungus = hasFungus
          ..hasScabies = hasScabies
          ..hasWorms = hasWorms
          ..ownerUid = ownerUid));
