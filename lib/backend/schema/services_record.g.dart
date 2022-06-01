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
  Iterable<Object> serialize(Serializers serializers, ServicesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
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
  ServicesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ServicesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
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

class _$ServicesRecord extends ServicesRecord {
  @override
  final String name;
  @override
  final DocumentReference<Object> category;
  @override
  final double price;
  @override
  final DocumentReference<Object> reference;

  factory _$ServicesRecord([void Function(ServicesRecordBuilder) updates]) =>
      (new ServicesRecordBuilder()..update(updates)).build();

  _$ServicesRecord._({this.name, this.category, this.price, this.reference})
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
        name == other.name &&
        category == other.category &&
        price == other.price &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), category.hashCode), price.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ServicesRecord')
          ..add('name', name)
          ..add('category', category)
          ..add('price', price)
          ..add('reference', reference))
        .toString();
  }
}

class ServicesRecordBuilder
    implements Builder<ServicesRecord, ServicesRecordBuilder> {
  _$ServicesRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  DocumentReference<Object> _category;
  DocumentReference<Object> get category => _$this._category;
  set category(DocumentReference<Object> category) =>
      _$this._category = category;

  double _price;
  double get price => _$this._price;
  set price(double price) => _$this._price = price;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ServicesRecordBuilder() {
    ServicesRecord._initializeBuilder(this);
  }

  ServicesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _category = $v.category;
      _price = $v.price;
      _reference = $v.reference;
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
  void update(void Function(ServicesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ServicesRecord build() {
    final _$result = _$v ??
        new _$ServicesRecord._(
            name: name, category: category, price: price, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
