// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pet_schedules_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PetSchedulesRecord> _$petSchedulesRecordSerializer =
    new _$PetSchedulesRecordSerializer();

class _$PetSchedulesRecordSerializer
    implements StructuredSerializer<PetSchedulesRecord> {
  @override
  final Iterable<Type> types = const [PetSchedulesRecord, _$PetSchedulesRecord];
  @override
  final String wireName = 'PetSchedulesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PetSchedulesRecord object,
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
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.scheduledAt;
    if (value != null) {
      result
        ..add('scheduled_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.duration;
    if (value != null) {
      result
        ..add('duration')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.durationUnit;
    if (value != null) {
      result
        ..add('duration_unit')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.petUid;
    if (value != null) {
      result
        ..add('pet_uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ownerUid;
    if (value != null) {
      result
        ..add('owner_uid')
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
  PetSchedulesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PetSchedulesRecordBuilder();

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
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'scheduled_at':
          result.scheduledAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'duration_unit':
          result.durationUnit = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pet_uid':
          result.petUid = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'owner_uid':
          result.ownerUid = serializers.deserialize(value,
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

class _$PetSchedulesRecord extends PetSchedulesRecord {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final DateTime? scheduledAt;
  @override
  final int? duration;
  @override
  final String? durationUnit;
  @override
  final DocumentReference<Object?>? petUid;
  @override
  final LatLng? location;
  @override
  final DateTime? createdAt;
  @override
  final DocumentReference<Object?>? ownerUid;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PetSchedulesRecord(
          [void Function(PetSchedulesRecordBuilder)? updates]) =>
      (new PetSchedulesRecordBuilder()..update(updates))._build();

  _$PetSchedulesRecord._(
      {this.name,
      this.description,
      this.scheduledAt,
      this.duration,
      this.durationUnit,
      this.petUid,
      this.location,
      this.createdAt,
      this.ownerUid,
      this.ffRef})
      : super._();

  @override
  PetSchedulesRecord rebuild(
          void Function(PetSchedulesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PetSchedulesRecordBuilder toBuilder() =>
      new PetSchedulesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PetSchedulesRecord &&
        name == other.name &&
        description == other.description &&
        scheduledAt == other.scheduledAt &&
        duration == other.duration &&
        durationUnit == other.durationUnit &&
        petUid == other.petUid &&
        location == other.location &&
        createdAt == other.createdAt &&
        ownerUid == other.ownerUid &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, scheduledAt.hashCode);
    _$hash = $jc(_$hash, duration.hashCode);
    _$hash = $jc(_$hash, durationUnit.hashCode);
    _$hash = $jc(_$hash, petUid.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, ownerUid.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PetSchedulesRecord')
          ..add('name', name)
          ..add('description', description)
          ..add('scheduledAt', scheduledAt)
          ..add('duration', duration)
          ..add('durationUnit', durationUnit)
          ..add('petUid', petUid)
          ..add('location', location)
          ..add('createdAt', createdAt)
          ..add('ownerUid', ownerUid)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PetSchedulesRecordBuilder
    implements Builder<PetSchedulesRecord, PetSchedulesRecordBuilder> {
  _$PetSchedulesRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DateTime? _scheduledAt;
  DateTime? get scheduledAt => _$this._scheduledAt;
  set scheduledAt(DateTime? scheduledAt) => _$this._scheduledAt = scheduledAt;

  int? _duration;
  int? get duration => _$this._duration;
  set duration(int? duration) => _$this._duration = duration;

  String? _durationUnit;
  String? get durationUnit => _$this._durationUnit;
  set durationUnit(String? durationUnit) => _$this._durationUnit = durationUnit;

  DocumentReference<Object?>? _petUid;
  DocumentReference<Object?>? get petUid => _$this._petUid;
  set petUid(DocumentReference<Object?>? petUid) => _$this._petUid = petUid;

  LatLng? _location;
  LatLng? get location => _$this._location;
  set location(LatLng? location) => _$this._location = location;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DocumentReference<Object?>? _ownerUid;
  DocumentReference<Object?>? get ownerUid => _$this._ownerUid;
  set ownerUid(DocumentReference<Object?>? ownerUid) =>
      _$this._ownerUid = ownerUid;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PetSchedulesRecordBuilder() {
    PetSchedulesRecord._initializeBuilder(this);
  }

  PetSchedulesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _scheduledAt = $v.scheduledAt;
      _duration = $v.duration;
      _durationUnit = $v.durationUnit;
      _petUid = $v.petUid;
      _location = $v.location;
      _createdAt = $v.createdAt;
      _ownerUid = $v.ownerUid;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PetSchedulesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PetSchedulesRecord;
  }

  @override
  void update(void Function(PetSchedulesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PetSchedulesRecord build() => _build();

  _$PetSchedulesRecord _build() {
    final _$result = _$v ??
        new _$PetSchedulesRecord._(
            name: name,
            description: description,
            scheduledAt: scheduledAt,
            duration: duration,
            durationUnit: durationUnit,
            petUid: petUid,
            location: location,
            createdAt: createdAt,
            ownerUid: ownerUid,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
