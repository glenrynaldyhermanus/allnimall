// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articles_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ArticlesRecord> _$articlesRecordSerializer =
    new _$ArticlesRecordSerializer();

class _$ArticlesRecordSerializer
    implements StructuredSerializer<ArticlesRecord> {
  @override
  final Iterable<Type> types = const [ArticlesRecord, _$ArticlesRecord];
  @override
  final String wireName = 'ArticlesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ArticlesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.article;
    if (value != null) {
      result
        ..add('article')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imageUrl;
    if (value != null) {
      result
        ..add('image_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  ArticlesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ArticlesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'article':
          result.article = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$ArticlesRecord extends ArticlesRecord {
  @override
  final String title;
  @override
  final String article;
  @override
  final String imageUrl;
  @override
  final DocumentReference<Object> reference;

  factory _$ArticlesRecord([void Function(ArticlesRecordBuilder) updates]) =>
      (new ArticlesRecordBuilder()..update(updates)).build();

  _$ArticlesRecord._({this.title, this.article, this.imageUrl, this.reference})
      : super._();

  @override
  ArticlesRecord rebuild(void Function(ArticlesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArticlesRecordBuilder toBuilder() =>
      new ArticlesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArticlesRecord &&
        title == other.title &&
        article == other.article &&
        imageUrl == other.imageUrl &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, title.hashCode), article.hashCode), imageUrl.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ArticlesRecord')
          ..add('title', title)
          ..add('article', article)
          ..add('imageUrl', imageUrl)
          ..add('reference', reference))
        .toString();
  }
}

class ArticlesRecordBuilder
    implements Builder<ArticlesRecord, ArticlesRecordBuilder> {
  _$ArticlesRecord _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _article;
  String get article => _$this._article;
  set article(String article) => _$this._article = article;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ArticlesRecordBuilder() {
    ArticlesRecord._initializeBuilder(this);
  }

  ArticlesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _article = $v.article;
      _imageUrl = $v.imageUrl;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ArticlesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ArticlesRecord;
  }

  @override
  void update(void Function(ArticlesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ArticlesRecord build() {
    final _$result = _$v ??
        new _$ArticlesRecord._(
            title: title,
            article: article,
            imageUrl: imageUrl,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
