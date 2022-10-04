// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_posts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PetPostsRecord> _$petPostsRecordSerializer =
    new _$PetPostsRecordSerializer();

class _$PetPostsRecordSerializer
    implements StructuredSerializer<PetPostsRecord> {
  @override
  final Iterable<Type> types = const [PetPostsRecord, _$PetPostsRecord];
  @override
  final String wireName = 'PetPostsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PetPostsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.petUid;
    if (value != null) {
      result
        ..add('pet_uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.petName;
    if (value != null) {
      result
        ..add('pet_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.petPictureUrl;
    if (value != null) {
      result
        ..add('pet_picture_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.condition;
    if (value != null) {
      result
        ..add('condition')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.video;
    if (value != null) {
      result
        ..add('video')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.text;
    if (value != null) {
      result
        ..add('text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.numFav;
    if (value != null) {
      result
        ..add('num_fav')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.favedBy;
    if (value != null) {
      result
        ..add('faved_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  PetPostsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PetPostsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'pet_uid':
          result.petUid = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'pet_name':
          result.petName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pet_picture_url':
          result.petPictureUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'condition':
          result.condition = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'num_fav':
          result.numFav = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'faved_by':
          result.favedBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$PetPostsRecord extends PetPostsRecord {
  @override
  final DocumentReference<Object?>? petUid;
  @override
  final String? petName;
  @override
  final String? petPictureUrl;
  @override
  final String? condition;
  @override
  final String? image;
  @override
  final String? video;
  @override
  final String? text;
  @override
  final DateTime? createdAt;
  @override
  final int? numFav;
  @override
  final BuiltList<DocumentReference<Object?>>? favedBy;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PetPostsRecord([void Function(PetPostsRecordBuilder)? updates]) =>
      (new PetPostsRecordBuilder()..update(updates))._build();

  _$PetPostsRecord._(
      {this.petUid,
      this.petName,
      this.petPictureUrl,
      this.condition,
      this.image,
      this.video,
      this.text,
      this.createdAt,
      this.numFav,
      this.favedBy,
      this.ffRef})
      : super._();

  @override
  PetPostsRecord rebuild(void Function(PetPostsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PetPostsRecordBuilder toBuilder() =>
      new PetPostsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PetPostsRecord &&
        petUid == other.petUid &&
        petName == other.petName &&
        petPictureUrl == other.petPictureUrl &&
        condition == other.condition &&
        image == other.image &&
        video == other.video &&
        text == other.text &&
        createdAt == other.createdAt &&
        numFav == other.numFav &&
        favedBy == other.favedBy &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, petUid.hashCode),
                                            petName.hashCode),
                                        petPictureUrl.hashCode),
                                    condition.hashCode),
                                image.hashCode),
                            video.hashCode),
                        text.hashCode),
                    createdAt.hashCode),
                numFav.hashCode),
            favedBy.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PetPostsRecord')
          ..add('petUid', petUid)
          ..add('petName', petName)
          ..add('petPictureUrl', petPictureUrl)
          ..add('condition', condition)
          ..add('image', image)
          ..add('video', video)
          ..add('text', text)
          ..add('createdAt', createdAt)
          ..add('numFav', numFav)
          ..add('favedBy', favedBy)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PetPostsRecordBuilder
    implements Builder<PetPostsRecord, PetPostsRecordBuilder> {
  _$PetPostsRecord? _$v;

  DocumentReference<Object?>? _petUid;
  DocumentReference<Object?>? get petUid => _$this._petUid;
  set petUid(DocumentReference<Object?>? petUid) => _$this._petUid = petUid;

  String? _petName;
  String? get petName => _$this._petName;
  set petName(String? petName) => _$this._petName = petName;

  String? _petPictureUrl;
  String? get petPictureUrl => _$this._petPictureUrl;
  set petPictureUrl(String? petPictureUrl) =>
      _$this._petPictureUrl = petPictureUrl;

  String? _condition;
  String? get condition => _$this._condition;
  set condition(String? condition) => _$this._condition = condition;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _video;
  String? get video => _$this._video;
  set video(String? video) => _$this._video = video;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  int? _numFav;
  int? get numFav => _$this._numFav;
  set numFav(int? numFav) => _$this._numFav = numFav;

  ListBuilder<DocumentReference<Object?>>? _favedBy;
  ListBuilder<DocumentReference<Object?>> get favedBy =>
      _$this._favedBy ??= new ListBuilder<DocumentReference<Object?>>();
  set favedBy(ListBuilder<DocumentReference<Object?>>? favedBy) =>
      _$this._favedBy = favedBy;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PetPostsRecordBuilder() {
    PetPostsRecord._initializeBuilder(this);
  }

  PetPostsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _petUid = $v.petUid;
      _petName = $v.petName;
      _petPictureUrl = $v.petPictureUrl;
      _condition = $v.condition;
      _image = $v.image;
      _video = $v.video;
      _text = $v.text;
      _createdAt = $v.createdAt;
      _numFav = $v.numFav;
      _favedBy = $v.favedBy?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PetPostsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PetPostsRecord;
  }

  @override
  void update(void Function(PetPostsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PetPostsRecord build() => _build();

  _$PetPostsRecord _build() {
    _$PetPostsRecord _$result;
    try {
      _$result = _$v ??
          new _$PetPostsRecord._(
              petUid: petUid,
              petName: petName,
              petPictureUrl: petPictureUrl,
              condition: condition,
              image: image,
              video: video,
              text: text,
              createdAt: createdAt,
              numFav: numFav,
              favedBy: _favedBy?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'favedBy';
        _favedBy?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PetPostsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
