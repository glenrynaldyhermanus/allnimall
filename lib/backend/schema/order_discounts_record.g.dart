// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_discounts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrderDiscountsRecord> _$orderDiscountsRecordSerializer =
    new _$OrderDiscountsRecordSerializer();

class _$OrderDiscountsRecordSerializer
    implements StructuredSerializer<OrderDiscountsRecord> {
  @override
  final Iterable<Type> types = const [
    OrderDiscountsRecord,
    _$OrderDiscountsRecord
  ];
  @override
  final String wireName = 'OrderDiscountsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, OrderDiscountsRecord object,
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
    value = object.discount;
    if (value != null) {
      result
        ..add('discount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.unit;
    if (value != null) {
      result
        ..add('unit')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  OrderDiscountsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderDiscountsRecordBuilder();

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
        case 'discount':
          result.discount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'unit':
          result.unit = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$OrderDiscountsRecord extends OrderDiscountsRecord {
  @override
  final String? name;
  @override
  final double? discount;
  @override
  final String? unit;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$OrderDiscountsRecord(
          [void Function(OrderDiscountsRecordBuilder)? updates]) =>
      (new OrderDiscountsRecordBuilder()..update(updates))._build();

  _$OrderDiscountsRecord._({this.name, this.discount, this.unit, this.ffRef})
      : super._();

  @override
  OrderDiscountsRecord rebuild(
          void Function(OrderDiscountsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderDiscountsRecordBuilder toBuilder() =>
      new OrderDiscountsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderDiscountsRecord &&
        name == other.name &&
        discount == other.discount &&
        unit == other.unit &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), discount.hashCode), unit.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderDiscountsRecord')
          ..add('name', name)
          ..add('discount', discount)
          ..add('unit', unit)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class OrderDiscountsRecordBuilder
    implements Builder<OrderDiscountsRecord, OrderDiscountsRecordBuilder> {
  _$OrderDiscountsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  double? _discount;
  double? get discount => _$this._discount;
  set discount(double? discount) => _$this._discount = discount;

  String? _unit;
  String? get unit => _$this._unit;
  set unit(String? unit) => _$this._unit = unit;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  OrderDiscountsRecordBuilder() {
    OrderDiscountsRecord._initializeBuilder(this);
  }

  OrderDiscountsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _discount = $v.discount;
      _unit = $v.unit;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderDiscountsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrderDiscountsRecord;
  }

  @override
  void update(void Function(OrderDiscountsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderDiscountsRecord build() => _build();

  _$OrderDiscountsRecord _build() {
    final _$result = _$v ??
        new _$OrderDiscountsRecord._(
            name: name, discount: discount, unit: unit, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
