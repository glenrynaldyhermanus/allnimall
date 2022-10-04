// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_messages_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChatMessagesRecord> _$chatMessagesRecordSerializer =
    new _$ChatMessagesRecordSerializer();

class _$ChatMessagesRecordSerializer
    implements StructuredSerializer<ChatMessagesRecord> {
  @override
  final Iterable<Type> types = const [ChatMessagesRecord, _$ChatMessagesRecord];
  @override
  final String wireName = 'ChatMessagesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ChatMessagesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.text;
    if (value != null) {
      result
        ..add('text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isResponse;
    if (value != null) {
      result
        ..add('is_response')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.userName;
    if (value != null) {
      result
        ..add('user_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.adminName;
    if (value != null) {
      result
        ..add('admin_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.customerUid;
    if (value != null) {
      result
        ..add('customer_uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.rangerUid;
    if (value != null) {
      result
        ..add('ranger_uid')
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
  ChatMessagesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChatMessagesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_response':
          result.isResponse = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'user_name':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'admin_name':
          result.adminName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'customer_uid':
          result.customerUid = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'ranger_uid':
          result.rangerUid = serializers.deserialize(value,
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

class _$ChatMessagesRecord extends ChatMessagesRecord {
  @override
  final String? text;
  @override
  final String? image;
  @override
  final bool? isResponse;
  @override
  final DateTime? createdAt;
  @override
  final String? userName;
  @override
  final String? adminName;
  @override
  final DocumentReference<Object?>? customerUid;
  @override
  final DocumentReference<Object?>? rangerUid;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ChatMessagesRecord(
          [void Function(ChatMessagesRecordBuilder)? updates]) =>
      (new ChatMessagesRecordBuilder()..update(updates))._build();

  _$ChatMessagesRecord._(
      {this.text,
      this.image,
      this.isResponse,
      this.createdAt,
      this.userName,
      this.adminName,
      this.customerUid,
      this.rangerUid,
      this.ffRef})
      : super._();

  @override
  ChatMessagesRecord rebuild(
          void Function(ChatMessagesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatMessagesRecordBuilder toBuilder() =>
      new ChatMessagesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatMessagesRecord &&
        text == other.text &&
        image == other.image &&
        isResponse == other.isResponse &&
        createdAt == other.createdAt &&
        userName == other.userName &&
        adminName == other.adminName &&
        customerUid == other.customerUid &&
        rangerUid == other.rangerUid &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, text.hashCode), image.hashCode),
                                isResponse.hashCode),
                            createdAt.hashCode),
                        userName.hashCode),
                    adminName.hashCode),
                customerUid.hashCode),
            rangerUid.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatMessagesRecord')
          ..add('text', text)
          ..add('image', image)
          ..add('isResponse', isResponse)
          ..add('createdAt', createdAt)
          ..add('userName', userName)
          ..add('adminName', adminName)
          ..add('customerUid', customerUid)
          ..add('rangerUid', rangerUid)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ChatMessagesRecordBuilder
    implements Builder<ChatMessagesRecord, ChatMessagesRecordBuilder> {
  _$ChatMessagesRecord? _$v;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  bool? _isResponse;
  bool? get isResponse => _$this._isResponse;
  set isResponse(bool? isResponse) => _$this._isResponse = isResponse;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _adminName;
  String? get adminName => _$this._adminName;
  set adminName(String? adminName) => _$this._adminName = adminName;

  DocumentReference<Object?>? _customerUid;
  DocumentReference<Object?>? get customerUid => _$this._customerUid;
  set customerUid(DocumentReference<Object?>? customerUid) =>
      _$this._customerUid = customerUid;

  DocumentReference<Object?>? _rangerUid;
  DocumentReference<Object?>? get rangerUid => _$this._rangerUid;
  set rangerUid(DocumentReference<Object?>? rangerUid) =>
      _$this._rangerUid = rangerUid;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ChatMessagesRecordBuilder() {
    ChatMessagesRecord._initializeBuilder(this);
  }

  ChatMessagesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _text = $v.text;
      _image = $v.image;
      _isResponse = $v.isResponse;
      _createdAt = $v.createdAt;
      _userName = $v.userName;
      _adminName = $v.adminName;
      _customerUid = $v.customerUid;
      _rangerUid = $v.rangerUid;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatMessagesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChatMessagesRecord;
  }

  @override
  void update(void Function(ChatMessagesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatMessagesRecord build() => _build();

  _$ChatMessagesRecord _build() {
    final _$result = _$v ??
        new _$ChatMessagesRecord._(
            text: text,
            image: image,
            isResponse: isResponse,
            createdAt: createdAt,
            userName: userName,
            adminName: adminName,
            customerUid: customerUid,
            rangerUid: rangerUid,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
