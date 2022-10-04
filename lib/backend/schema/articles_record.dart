import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'articles_record.g.dart';

abstract class ArticlesRecord
    implements Built<ArticlesRecord, ArticlesRecordBuilder> {
  static Serializer<ArticlesRecord> get serializer =>
      _$articlesRecordSerializer;

  String? get title;

  String? get article;

  @BuiltValueField(wireName: 'image_url')
  String? get imageUrl;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ArticlesRecordBuilder builder) => builder
    ..title = ''
    ..article = ''
    ..imageUrl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('articles');

  static Stream<ArticlesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ArticlesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ArticlesRecord._();
  factory ArticlesRecord([void Function(ArticlesRecordBuilder) updates]) =
      _$ArticlesRecord;

  static ArticlesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createArticlesRecordData({
  String? title,
  String? article,
  String? imageUrl,
}) {
  final firestoreData = serializers.toFirestore(
    ArticlesRecord.serializer,
    ArticlesRecord(
      (a) => a
        ..title = title
        ..article = article
        ..imageUrl = imageUrl,
    ),
  );

  return firestoreData;
}
