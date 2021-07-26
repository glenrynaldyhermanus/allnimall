import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'pets_record.g.dart';

abstract class PetsRecord implements Built<PetsRecord, PetsRecordBuilder> {
  static Serializer<PetsRecord> get serializer => _$petsRecordSerializer;

  @nullable
  String get uid;

  @nullable
  String get name;

  @nullable
  DateTime get birthdate;

  @nullable
  @BuiltValueField(wireName: 'owner_path')
  DocumentReference get ownerPath;

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
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PetsRecordBuilder builder) => builder
    ..uid = ''
    ..name = ''
    ..ownerName = ''
    ..weight = 0.0
    ..condition = ''
    ..pictureUrl = ''
    ..hasVaccinated = false
    ..hasSterilised = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pets');

  static Stream<PetsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PetsRecord._();
  factory PetsRecord([void Function(PetsRecordBuilder) updates]) = _$PetsRecord;

  static PetsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createPetsRecordData({
  String uid,
  String name,
  DateTime birthdate,
  DocumentReference ownerPath,
  String ownerName,
  double weight,
  String condition,
  String pictureUrl,
  bool hasVaccinated,
  bool hasSterilised,
}) =>
    serializers.toFirestore(
        PetsRecord.serializer,
        PetsRecord((p) => p
          ..uid = uid
          ..name = name
          ..birthdate = birthdate
          ..ownerPath = ownerPath
          ..ownerName = ownerName
          ..weight = weight
          ..condition = condition
          ..pictureUrl = pictureUrl
          ..hasVaccinated = hasVaccinated
          ..hasSterilised = hasSterilised));
