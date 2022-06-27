// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ratings_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RatingsRecord> _$ratingsRecordSerializer =
    new _$RatingsRecordSerializer();

class _$RatingsRecordSerializer implements StructuredSerializer<RatingsRecord> {
  @override
  final Iterable<Type> types = const [RatingsRecord, _$RatingsRecord];
  @override
  final String wireName = 'RatingsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, RatingsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.orderUid;
    if (value != null) {
      result
        ..add('order_uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.orderNo;
    if (value != null) {
      result
        ..add('order_no')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rate;
    if (value != null) {
      result
        ..add('rate')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
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
  RatingsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RatingsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'order_uid':
          result.orderUid = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'order_no':
          result.orderNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rate':
          result.rate = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
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

class _$RatingsRecord extends RatingsRecord {
  @override
  final DocumentReference<Object> orderUid;
  @override
  final String orderNo;
  @override
  final int rate;
  @override
  final String comment;
  @override
  final DocumentReference<Object> reference;

  factory _$RatingsRecord([void Function(RatingsRecordBuilder) updates]) =>
      (new RatingsRecordBuilder()..update(updates)).build();

  _$RatingsRecord._(
      {this.orderUid, this.orderNo, this.rate, this.comment, this.reference})
      : super._();

  @override
  RatingsRecord rebuild(void Function(RatingsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RatingsRecordBuilder toBuilder() => new RatingsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RatingsRecord &&
        orderUid == other.orderUid &&
        orderNo == other.orderNo &&
        rate == other.rate &&
        comment == other.comment &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, orderUid.hashCode), orderNo.hashCode),
                rate.hashCode),
            comment.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RatingsRecord')
          ..add('orderUid', orderUid)
          ..add('orderNo', orderNo)
          ..add('rate', rate)
          ..add('comment', comment)
          ..add('reference', reference))
        .toString();
  }
}

class RatingsRecordBuilder
    implements Builder<RatingsRecord, RatingsRecordBuilder> {
  _$RatingsRecord _$v;

  DocumentReference<Object> _orderUid;
  DocumentReference<Object> get orderUid => _$this._orderUid;
  set orderUid(DocumentReference<Object> orderUid) =>
      _$this._orderUid = orderUid;

  String _orderNo;
  String get orderNo => _$this._orderNo;
  set orderNo(String orderNo) => _$this._orderNo = orderNo;

  int _rate;
  int get rate => _$this._rate;
  set rate(int rate) => _$this._rate = rate;

  String _comment;
  String get comment => _$this._comment;
  set comment(String comment) => _$this._comment = comment;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  RatingsRecordBuilder() {
    RatingsRecord._initializeBuilder(this);
  }

  RatingsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderUid = $v.orderUid;
      _orderNo = $v.orderNo;
      _rate = $v.rate;
      _comment = $v.comment;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RatingsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RatingsRecord;
  }

  @override
  void update(void Function(RatingsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RatingsRecord build() {
    final _$result = _$v ??
        new _$RatingsRecord._(
            orderUid: orderUid,
            orderNo: orderNo,
            rate: rate,
            comment: comment,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
