// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rangers_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RangersRecord> _$rangersRecordSerializer =
    new _$RangersRecordSerializer();

class _$RangersRecordSerializer implements StructuredSerializer<RangersRecord> {
  @override
  final Iterable<Type> types = const [RangersRecord, _$RangersRecord];
  @override
  final String wireName = 'RangersRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, RangersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.role;
    if (value != null) {
      result
        ..add('role')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.latlng;
    if (value != null) {
      result
        ..add('latlng')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
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
  RangersRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RangersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'latlng':
          result.latlng = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
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

class _$RangersRecord extends RangersRecord {
  @override
  final String uid;
  @override
  final String displayName;
  @override
  final String photoUrl;
  @override
  final String email;
  @override
  final DateTime createdTime;
  @override
  final String phoneNumber;
  @override
  final String role;
  @override
  final LatLng latlng;
  @override
  final DocumentReference<Object> reference;

  factory _$RangersRecord([void Function(RangersRecordBuilder) updates]) =>
      (new RangersRecordBuilder()..update(updates)).build();

  _$RangersRecord._(
      {this.uid,
      this.displayName,
      this.photoUrl,
      this.email,
      this.createdTime,
      this.phoneNumber,
      this.role,
      this.latlng,
      this.reference})
      : super._();

  @override
  RangersRecord rebuild(void Function(RangersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RangersRecordBuilder toBuilder() => new RangersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RangersRecord &&
        uid == other.uid &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        email == other.email &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        role == other.role &&
        latlng == other.latlng &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, uid.hashCode), displayName.hashCode),
                                photoUrl.hashCode),
                            email.hashCode),
                        createdTime.hashCode),
                    phoneNumber.hashCode),
                role.hashCode),
            latlng.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RangersRecord')
          ..add('uid', uid)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('email', email)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('role', role)
          ..add('latlng', latlng)
          ..add('reference', reference))
        .toString();
  }
}

class RangersRecordBuilder
    implements Builder<RangersRecord, RangersRecordBuilder> {
  _$RangersRecord _$v;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  String _role;
  String get role => _$this._role;
  set role(String role) => _$this._role = role;

  LatLng _latlng;
  LatLng get latlng => _$this._latlng;
  set latlng(LatLng latlng) => _$this._latlng = latlng;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  RangersRecordBuilder() {
    RangersRecord._initializeBuilder(this);
  }

  RangersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _email = $v.email;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _role = $v.role;
      _latlng = $v.latlng;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RangersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RangersRecord;
  }

  @override
  void update(void Function(RangersRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RangersRecord build() {
    final _$result = _$v ??
        new _$RangersRecord._(
            uid: uid,
            displayName: displayName,
            photoUrl: photoUrl,
            email: email,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            role: role,
            latlng: latlng,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
