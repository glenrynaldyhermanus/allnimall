// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_categories_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ServiceCategoriesRecord> _$serviceCategoriesRecordSerializer =
    new _$ServiceCategoriesRecordSerializer();

class _$ServiceCategoriesRecordSerializer
    implements StructuredSerializer<ServiceCategoriesRecord> {
  @override
  final Iterable<Type> types = const [
    ServiceCategoriesRecord,
    _$ServiceCategoriesRecord
  ];
  @override
  final String wireName = 'ServiceCategoriesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ServiceCategoriesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
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
  ServiceCategoriesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ServiceCategoriesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_active':
          result.isActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$ServiceCategoriesRecord extends ServiceCategoriesRecord {
  @override
  final String? name;
  @override
  final String? type;
  @override
  final bool? isActive;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ServiceCategoriesRecord(
          [void Function(ServiceCategoriesRecordBuilder)? updates]) =>
      (new ServiceCategoriesRecordBuilder()..update(updates))._build();

  _$ServiceCategoriesRecord._({this.name, this.type, this.isActive, this.ffRef})
      : super._();

  @override
  ServiceCategoriesRecord rebuild(
          void Function(ServiceCategoriesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceCategoriesRecordBuilder toBuilder() =>
      new ServiceCategoriesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceCategoriesRecord &&
        name == other.name &&
        type == other.type &&
        isActive == other.isActive &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), type.hashCode), isActive.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServiceCategoriesRecord')
          ..add('name', name)
          ..add('type', type)
          ..add('isActive', isActive)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ServiceCategoriesRecordBuilder
    implements
        Builder<ServiceCategoriesRecord, ServiceCategoriesRecordBuilder> {
  _$ServiceCategoriesRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  bool? _isActive;
  bool? get isActive => _$this._isActive;
  set isActive(bool? isActive) => _$this._isActive = isActive;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ServiceCategoriesRecordBuilder() {
    ServiceCategoriesRecord._initializeBuilder(this);
  }

  ServiceCategoriesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _type = $v.type;
      _isActive = $v.isActive;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceCategoriesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServiceCategoriesRecord;
  }

  @override
  void update(void Function(ServiceCategoriesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceCategoriesRecord build() => _build();

  _$ServiceCategoriesRecord _build() {
    final _$result = _$v ??
        new _$ServiceCategoriesRecord._(
            name: name, type: type, isActive: isActive, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
