// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ServicesRecord> _$servicesRecordSerializer =
    new _$ServicesRecordSerializer();

class _$ServicesRecordSerializer
    implements StructuredSerializer<ServicesRecord> {
  @override
  final Iterable<Type> types = const [ServicesRecord, _$ServicesRecord];
  @override
  final String wireName = 'ServicesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ServicesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.categoryUid;
    if (value != null) {
      result
        ..add('category_uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fee;
    if (value != null) {
      result
        ..add('fee')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.categoryName;
    if (value != null) {
      result
        ..add('category_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isActive;
    if (value != null) {
      result
        ..add('is_active')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sequence;
    if (value != null) {
      result
        ..add('sequence')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  ServicesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ServicesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'category_uid':
          result.categoryUid = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'fee':
          result.fee = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'category_name':
          result.categoryName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_active':
          result.isActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sequence':
          result.sequence = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$ServicesRecord extends ServicesRecord {
  @override
  final DocumentReference<Object?>? categoryUid;
  @override
  final String? name;
  @override
  final double? fee;
  @override
  final String? categoryName;
  @override
  final bool? isActive;
  @override
  final String? description;
  @override
  final int? sequence;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ServicesRecord([void Function(ServicesRecordBuilder)? updates]) =>
      (new ServicesRecordBuilder()..update(updates))._build();

  _$ServicesRecord._(
      {this.categoryUid,
      this.name,
      this.fee,
      this.categoryName,
      this.isActive,
      this.description,
      this.sequence,
      this.ffRef})
      : super._();

  @override
  ServicesRecord rebuild(void Function(ServicesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServicesRecordBuilder toBuilder() =>
      new ServicesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServicesRecord &&
        categoryUid == other.categoryUid &&
        name == other.name &&
        fee == other.fee &&
        categoryName == other.categoryName &&
        isActive == other.isActive &&
        description == other.description &&
        sequence == other.sequence &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, categoryUid.hashCode), name.hashCode),
                            fee.hashCode),
                        categoryName.hashCode),
                    isActive.hashCode),
                description.hashCode),
            sequence.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServicesRecord')
          ..add('categoryUid', categoryUid)
          ..add('name', name)
          ..add('fee', fee)
          ..add('categoryName', categoryName)
          ..add('isActive', isActive)
          ..add('description', description)
          ..add('sequence', sequence)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ServicesRecordBuilder
    implements Builder<ServicesRecord, ServicesRecordBuilder> {
  _$ServicesRecord? _$v;

  DocumentReference<Object?>? _categoryUid;
  DocumentReference<Object?>? get categoryUid => _$this._categoryUid;
  set categoryUid(DocumentReference<Object?>? categoryUid) =>
      _$this._categoryUid = categoryUid;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  double? _fee;
  double? get fee => _$this._fee;
  set fee(double? fee) => _$this._fee = fee;

  String? _categoryName;
  String? get categoryName => _$this._categoryName;
  set categoryName(String? categoryName) => _$this._categoryName = categoryName;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _sequence;
  int? get sequence => _$this._sequence;
  set sequence(int? sequence) => _$this._sequence = sequence;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ServicesRecordBuilder() {
    ServicesRecord._initializeBuilder(this);
  }

  ServicesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _categoryUid = $v.categoryUid;
      _name = $v.name;
      _fee = $v.fee;
      _categoryName = $v.categoryName;
      _isActive = $v.isActive;
      _description = $v.description;
      _sequence = $v.sequence;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServicesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServicesRecord;
  }

  @override
  void update(void Function(ServicesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServicesRecord build() => _build();

  _$ServicesRecord _build() {
    final _$result = _$v ??
        new _$ServicesRecord._(
            categoryUid: categoryUid,
            name: name,
            fee: fee,
            categoryName: categoryName,
            isActive: isActive,
            description: description,
            sequence: sequence,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
