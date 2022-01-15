import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'pet_posts_record.g.dart';

abstract class PetPostsRecord
    implements Built<PetPostsRecord, PetPostsRecordBuilder> {
  static Serializer<PetPostsRecord> get serializer =>
      _$petPostsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'pet_uid')
  DocumentReference get petUid;

  @nullable
  @BuiltValueField(wireName: 'pet_name')
  String get petName;

  @nullable
  @BuiltValueField(wireName: 'pet_picture_url')
  String get petPictureUrl;

  @nullable
  String get condition;

  @nullable
  String get image;

  @nullable
  String get video;

  @nullable
  String get text;

  @nullable
  @BuiltValueField(wireName: 'created_at')
  DateTime get createdAt;

  @nullable
  @BuiltValueField(wireName: 'num_fav')
  int get numFav;

  @nullable
  @BuiltValueField(wireName: 'faved_by')
  BuiltList<DocumentReference> get favedBy;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PetPostsRecordBuilder builder) => builder
    ..petName = ''
    ..petPictureUrl = ''
    ..condition = ''
    ..image = ''
    ..video = ''
    ..text = ''
    ..numFav = 0
    ..favedBy = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pet_posts');

  static Stream<PetPostsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PetPostsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PetPostsRecord._();
  factory PetPostsRecord([void Function(PetPostsRecordBuilder) updates]) =
      _$PetPostsRecord;

  static PetPostsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPetPostsRecordData({
  DocumentReference petUid,
  String petName,
  String petPictureUrl,
  String condition,
  String image,
  String video,
  String text,
  DateTime createdAt,
  int numFav,
}) =>
    serializers.toFirestore(
        PetPostsRecord.serializer,
        PetPostsRecord((p) => p
          ..petUid = petUid
          ..petName = petName
          ..petPictureUrl = petPictureUrl
          ..condition = condition
          ..image = image
          ..video = video
          ..text = text
          ..createdAt = createdAt
          ..numFav = numFav
          ..favedBy = null));
