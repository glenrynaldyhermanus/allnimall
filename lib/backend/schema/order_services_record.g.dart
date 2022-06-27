// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_services_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrderServicesRecord> _$orderServicesRecordSerializer =
    new _$OrderServicesRecordSerializer();

class _$OrderServicesRecordSerializer
    implements StructuredSerializer<OrderServicesRecord> {
  @override
  final Iterable<Type> types = const [
    OrderServicesRecord,
    _$OrderServicesRecord
  ];
  @override
  final String wireName = 'OrderServicesRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, OrderServicesRecord object,
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
    value = object.quantity;
    if (value != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  OrderServicesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderServicesRecordBuilder();

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
        case 'fee':
          result.fee = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'category_name':
          result.categoryName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$OrderServicesRecord extends OrderServicesRecord {
  @override
  final String name;
  @override
  final double fee;
  @override
  final String categoryName;
  @override
  final int quantity;
  @override
  final DocumentReference<Object> reference;

  factory _$OrderServicesRecord(
          [void Function(OrderServicesRecordBuilder) updates]) =>
      (new OrderServicesRecordBuilder()..update(updates)).build();

  _$OrderServicesRecord._(
      {this.name, this.fee, this.categoryName, this.quantity, this.reference})
      : super._();

  @override
  OrderServicesRecord rebuild(
          void Function(OrderServicesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderServicesRecordBuilder toBuilder() =>
      new OrderServicesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderServicesRecord &&
        name == other.name &&
        fee == other.fee &&
        categoryName == other.categoryName &&
        quantity == other.quantity &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, name.hashCode), fee.hashCode),
                categoryName.hashCode),
            quantity.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrderServicesRecord')
          ..add('name', name)
          ..add('fee', fee)
          ..add('categoryName', categoryName)
          ..add('quantity', quantity)
          ..add('reference', reference))
        .toString();
  }
}

class OrderServicesRecordBuilder
    implements Builder<OrderServicesRecord, OrderServicesRecordBuilder> {
  _$OrderServicesRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  double _fee;
  double get fee => _$this._fee;
  set fee(double fee) => _$this._fee = fee;

  String _categoryName;
  String get categoryName => _$this._categoryName;
  set categoryName(String categoryName) => _$this._categoryName = categoryName;

  int _quantity;
  int get quantity => _$this._quantity;
  set quantity(int quantity) => _$this._quantity = quantity;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  OrderServicesRecordBuilder() {
    OrderServicesRecord._initializeBuilder(this);
  }

  OrderServicesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _fee = $v.fee;
      _categoryName = $v.categoryName;
      _quantity = $v.quantity;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderServicesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrderServicesRecord;
  }

  @override
  void update(void Function(OrderServicesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrderServicesRecord build() {
    final _$result = _$v ??
        new _$OrderServicesRecord._(
            name: name,
            fee: fee,
            categoryName: categoryName,
            quantity: quantity,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
