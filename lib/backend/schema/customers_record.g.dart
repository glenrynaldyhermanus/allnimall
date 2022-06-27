// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customers_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CustomersRecord> _$customersRecordSerializer =
    new _$CustomersRecordSerializer();

class _$CustomersRecordSerializer
    implements StructuredSerializer<CustomersRecord> {
  @override
  final Iterable<Type> types = const [CustomersRecord, _$CustomersRecord];
  @override
  final String wireName = 'CustomersRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, CustomersRecord object,
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
    value = object.email;
    if (value != null) {
      result
        ..add('email')
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
    value = object.orderAddress;
    if (value != null) {
      result
        ..add('order_address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.orderLatlng;
    if (value != null) {
      result
        ..add('order_latlng')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.birthdate;
    if (value != null) {
      result
        ..add('birthdate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
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
  CustomersRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CustomersRecordBuilder();

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
        case 'email':
          result.email = serializers.deserialize(value,
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
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'order_address':
          result.orderAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'order_latlng':
          result.orderLatlng = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng;
          break;
        case 'birthdate':
          result.birthdate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
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

class _$CustomersRecord extends CustomersRecord {
  @override
  final String uid;
  @override
  final String email;
  @override
  final String displayName;
  @override
  final String photoUrl;
  @override
  final DateTime createdTime;
  @override
  final String phoneNumber;
  @override
  final String orderAddress;
  @override
  final LatLng orderLatlng;
  @override
  final DateTime birthdate;
  @override
  final String gender;
  @override
  final DocumentReference<Object> reference;

  factory _$CustomersRecord([void Function(CustomersRecordBuilder) updates]) =>
      (new CustomersRecordBuilder()..update(updates)).build();

  _$CustomersRecord._(
      {this.uid,
      this.email,
      this.displayName,
      this.photoUrl,
      this.createdTime,
      this.phoneNumber,
      this.orderAddress,
      this.orderLatlng,
      this.birthdate,
      this.gender,
      this.reference})
      : super._();

  @override
  CustomersRecord rebuild(void Function(CustomersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomersRecordBuilder toBuilder() =>
      new CustomersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomersRecord &&
        uid == other.uid &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        orderAddress == other.orderAddress &&
        orderLatlng == other.orderLatlng &&
        birthdate == other.birthdate &&
        gender == other.gender &&
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
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, uid.hashCode),
                                            email.hashCode),
                                        displayName.hashCode),
                                    photoUrl.hashCode),
                                createdTime.hashCode),
                            phoneNumber.hashCode),
                        orderAddress.hashCode),
                    orderLatlng.hashCode),
                birthdate.hashCode),
            gender.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CustomersRecord')
          ..add('uid', uid)
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('orderAddress', orderAddress)
          ..add('orderLatlng', orderLatlng)
          ..add('birthdate', birthdate)
          ..add('gender', gender)
          ..add('reference', reference))
        .toString();
  }
}

class CustomersRecordBuilder
    implements Builder<CustomersRecord, CustomersRecordBuilder> {
  _$CustomersRecord _$v;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  String _orderAddress;
  String get orderAddress => _$this._orderAddress;
  set orderAddress(String orderAddress) => _$this._orderAddress = orderAddress;

  LatLng _orderLatlng;
  LatLng get orderLatlng => _$this._orderLatlng;
  set orderLatlng(LatLng orderLatlng) => _$this._orderLatlng = orderLatlng;

  DateTime _birthdate;
  DateTime get birthdate => _$this._birthdate;
  set birthdate(DateTime birthdate) => _$this._birthdate = birthdate;

  String _gender;
  String get gender => _$this._gender;
  set gender(String gender) => _$this._gender = gender;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  CustomersRecordBuilder() {
    CustomersRecord._initializeBuilder(this);
  }

  CustomersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _orderAddress = $v.orderAddress;
      _orderLatlng = $v.orderLatlng;
      _birthdate = $v.birthdate;
      _gender = $v.gender;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CustomersRecord;
  }

  @override
  void update(void Function(CustomersRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CustomersRecord build() {
    final _$result = _$v ??
        new _$CustomersRecord._(
            uid: uid,
            email: email,
            displayName: displayName,
            photoUrl: photoUrl,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            orderAddress: orderAddress,
            orderLatlng: orderLatlng,
            birthdate: birthdate,
            gender: gender,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
