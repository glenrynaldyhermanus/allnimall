// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feature_requests_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FeatureRequestsRecord> _$featureRequestsRecordSerializer =
    new _$FeatureRequestsRecordSerializer();

class _$FeatureRequestsRecordSerializer
    implements StructuredSerializer<FeatureRequestsRecord> {
  @override
  final Iterable<Type> types = const [
    FeatureRequestsRecord,
    _$FeatureRequestsRecord
  ];
  @override
  final String wireName = 'FeatureRequestsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, FeatureRequestsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.feedback;
    if (value != null) {
      result
        ..add('feedback')
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
    value = object.response;
    if (value != null) {
      result
        ..add('response')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userUid;
    if (value != null) {
      result
        ..add('user_uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  FeatureRequestsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeatureRequestsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'feedback':
          result.feedback = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'response':
          result.response = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user_uid':
          result.userUid = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$FeatureRequestsRecord extends FeatureRequestsRecord {
  @override
  final String? feedback;
  @override
  final DateTime? createdAt;
  @override
  final String? response;
  @override
  final String? status;
  @override
  final DocumentReference<Object?>? userUid;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FeatureRequestsRecord(
          [void Function(FeatureRequestsRecordBuilder)? updates]) =>
      (new FeatureRequestsRecordBuilder()..update(updates))._build();

  _$FeatureRequestsRecord._(
      {this.feedback,
      this.createdAt,
      this.response,
      this.status,
      this.userUid,
      this.ffRef})
      : super._();

  @override
  FeatureRequestsRecord rebuild(
          void Function(FeatureRequestsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeatureRequestsRecordBuilder toBuilder() =>
      new FeatureRequestsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeatureRequestsRecord &&
        feedback == other.feedback &&
        createdAt == other.createdAt &&
        response == other.response &&
        status == other.status &&
        userUid == other.userUid &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, feedback.hashCode), createdAt.hashCode),
                    response.hashCode),
                status.hashCode),
            userUid.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FeatureRequestsRecord')
          ..add('feedback', feedback)
          ..add('createdAt', createdAt)
          ..add('response', response)
          ..add('status', status)
          ..add('userUid', userUid)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FeatureRequestsRecordBuilder
    implements Builder<FeatureRequestsRecord, FeatureRequestsRecordBuilder> {
  _$FeatureRequestsRecord? _$v;

  String? _feedback;
  String? get feedback => _$this._feedback;
  set feedback(String? feedback) => _$this._feedback = feedback;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _response;
  String? get response => _$this._response;
  set response(String? response) => _$this._response = response;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  DocumentReference<Object?>? _userUid;
  DocumentReference<Object?>? get userUid => _$this._userUid;
  set userUid(DocumentReference<Object?>? userUid) => _$this._userUid = userUid;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FeatureRequestsRecordBuilder() {
    FeatureRequestsRecord._initializeBuilder(this);
  }

  FeatureRequestsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _feedback = $v.feedback;
      _createdAt = $v.createdAt;
      _response = $v.response;
      _status = $v.status;
      _userUid = $v.userUid;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeatureRequestsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FeatureRequestsRecord;
  }

  @override
  void update(void Function(FeatureRequestsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FeatureRequestsRecord build() => _build();

  _$FeatureRequestsRecord _build() {
    final _$result = _$v ??
        new _$FeatureRequestsRecord._(
            feedback: feedback,
            createdAt: createdAt,
            response: response,
            status: status,
            userUid: userUid,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
