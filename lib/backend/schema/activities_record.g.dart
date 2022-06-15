// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activities_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ActivitiesRecord> _$activitiesRecordSerializer =
    new _$ActivitiesRecordSerializer();

class _$ActivitiesRecordSerializer
    implements StructuredSerializer<ActivitiesRecord> {
  @override
  final Iterable<Type> types = const [ActivitiesRecord, _$ActivitiesRecord];
  @override
  final String wireName = 'ActivitiesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ActivitiesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.activity;
    if (value != null) {
      result
        ..add('activity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sequence;
    if (value != null) {
      result
        ..add('sequence')
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
  ActivitiesRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ActivitiesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'activity':
          result.activity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sequence':
          result.sequence = serializers.deserialize(value,
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

class _$ActivitiesRecord extends ActivitiesRecord {
  @override
  final String activity;
  @override
  final int sequence;
  @override
  final DocumentReference<Object> reference;

  factory _$ActivitiesRecord(
          [void Function(ActivitiesRecordBuilder) updates]) =>
      (new ActivitiesRecordBuilder()..update(updates)).build();

  _$ActivitiesRecord._({this.activity, this.sequence, this.reference})
      : super._();

  @override
  ActivitiesRecord rebuild(void Function(ActivitiesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActivitiesRecordBuilder toBuilder() =>
      new ActivitiesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActivitiesRecord &&
        activity == other.activity &&
        sequence == other.sequence &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, activity.hashCode), sequence.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ActivitiesRecord')
          ..add('activity', activity)
          ..add('sequence', sequence)
          ..add('reference', reference))
        .toString();
  }
}

class ActivitiesRecordBuilder
    implements Builder<ActivitiesRecord, ActivitiesRecordBuilder> {
  _$ActivitiesRecord _$v;

  String _activity;
  String get activity => _$this._activity;
  set activity(String activity) => _$this._activity = activity;

  int _sequence;
  int get sequence => _$this._sequence;
  set sequence(int sequence) => _$this._sequence = sequence;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ActivitiesRecordBuilder() {
    ActivitiesRecord._initializeBuilder(this);
  }

  ActivitiesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _activity = $v.activity;
      _sequence = $v.sequence;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActivitiesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ActivitiesRecord;
  }

  @override
  void update(void Function(ActivitiesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ActivitiesRecord build() {
    final _$result = _$v ??
        new _$ActivitiesRecord._(
            activity: activity, sequence: sequence, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
