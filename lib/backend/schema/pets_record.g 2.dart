// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pets_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PetsRecord> _$petsRecordSerializer = new _$PetsRecordSerializer();

class _$PetsRecordSerializer implements StructuredSerializer<PetsRecord> {
  @override
  final Iterable<Type> types = const [PetsRecord, _$PetsRecord];
  @override
  final String wireName = 'PetsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, PetsRecord object,
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
    value = object.birthdate;
    if (value != null) {
      result
        ..add('birthdate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ownerName;
    if (value != null) {
      result
        ..add('owner_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.weight;
    if (value != null) {
      result
        ..add('weight')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.condition;
    if (value != null) {
      result
        ..add('condition')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pictureUrl;
    if (value != null) {
      result
        ..add('picture_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hasVaccinated;
    if (value != null) {
      result
        ..add('has_vaccinated')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.hasSterilised;
    if (value != null) {
      result
        ..add('has_sterilised')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.sex;
    if (value != null) {
      result
        ..add('sex')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.weightUnit;
    if (value != null) {
      result
        ..add('weight_unit')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.breed;
    if (value != null) {
      result
        ..add('breed')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hasDiarrhea;
    if (value != null) {
      result
        ..add('has_diarrhea')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.hasEarmites;
    if (value != null) {
      result
        ..add('has_earmites')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.hasFleas;
    if (value != null) {
      result
        ..add('has_fleas')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.hasFungus;
    if (value != null) {
      result
        ..add('has_fungus')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.hasScabies;
    if (value != null) {
      result
        ..add('has_scabies')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.hasWorms;
    if (value != null) {
      result
        ..add('has_worms')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.ownerUid;
    if (value != null) {
      result
        ..add('owner_uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
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
  PetsRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PetsRecordBuilder();

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
        case 'birthdate':
          result.birthdate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'owner_name':
          result.ownerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'weight':
          result.weight = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'condition':
          result.condition = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'picture_url':
          result.pictureUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'has_vaccinated':
          result.hasVaccinated = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'has_sterilised':
          result.hasSterilised = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'sex':
          result.sex = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'weight_unit':
          result.weightUnit = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'breed':
          result.breed = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'has_diarrhea':
          result.hasDiarrhea = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'has_earmites':
          result.hasEarmites = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'has_fleas':
          result.hasFleas = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'has_fungus':
          result.hasFungus = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'has_scabies':
          result.hasScabies = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'has_worms':
          result.hasWorms = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'owner_uid':
          result.ownerUid = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
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

class _$PetsRecord extends PetsRecord {
  @override
  final String name;
  @override
  final DateTime birthdate;
  @override
  final String ownerName;
  @override
  final double weight;
  @override
  final String condition;
  @override
  final String pictureUrl;
  @override
  final bool hasVaccinated;
  @override
  final bool hasSterilised;
  @override
  final String sex;
  @override
  final String weightUnit;
  @override
  final String breed;
  @override
  final bool hasDiarrhea;
  @override
  final bool hasEarmites;
  @override
  final bool hasFleas;
  @override
  final bool hasFungus;
  @override
  final bool hasScabies;
  @override
  final bool hasWorms;
  @override
  final DocumentReference<Object> ownerUid;
  @override
  final DocumentReference<Object> reference;

  factory _$PetsRecord([void Function(PetsRecordBuilder) updates]) =>
      (new PetsRecordBuilder()..update(updates)).build();

  _$PetsRecord._(
      {this.name,
      this.birthdate,
      this.ownerName,
      this.weight,
      this.condition,
      this.pictureUrl,
      this.hasVaccinated,
      this.hasSterilised,
      this.sex,
      this.weightUnit,
      this.breed,
      this.hasDiarrhea,
      this.hasEarmites,
      this.hasFleas,
      this.hasFungus,
      this.hasScabies,
      this.hasWorms,
      this.ownerUid,
      this.reference})
      : super._();

  @override
  PetsRecord rebuild(void Function(PetsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PetsRecordBuilder toBuilder() => new PetsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PetsRecord &&
        name == other.name &&
        birthdate == other.birthdate &&
        ownerName == other.ownerName &&
        weight == other.weight &&
        condition == other.condition &&
        pictureUrl == other.pictureUrl &&
        hasVaccinated == other.hasVaccinated &&
        hasSterilised == other.hasSterilised &&
        sex == other.sex &&
        weightUnit == other.weightUnit &&
        breed == other.breed &&
        hasDiarrhea == other.hasDiarrhea &&
        hasEarmites == other.hasEarmites &&
        hasFleas == other.hasFleas &&
        hasFungus == other.hasFungus &&
        hasScabies == other.hasScabies &&
        hasWorms == other.hasWorms &&
        ownerUid == other.ownerUid &&
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
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc(
                                                                                0,
                                                                                name
                                                                                    .hashCode),
                                                                            birthdate
                                                                                .hashCode),
                                                                        ownerName
                                                                            .hashCode),
                                                                    weight
                                                                        .hashCode),
                                                                condition
                                                                    .hashCode),
                                                            pictureUrl
                                                                .hashCode),
                                                        hasVaccinated.hashCode),
                                                    hasSterilised.hashCode),
                                                sex.hashCode),
                                            weightUnit.hashCode),
                                        breed.hashCode),
                                    hasDiarrhea.hashCode),
                                hasEarmites.hashCode),
                            hasFleas.hashCode),
                        hasFungus.hashCode),
                    hasScabies.hashCode),
                hasWorms.hashCode),
            ownerUid.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PetsRecord')
          ..add('name', name)
          ..add('birthdate', birthdate)
          ..add('ownerName', ownerName)
          ..add('weight', weight)
          ..add('condition', condition)
          ..add('pictureUrl', pictureUrl)
          ..add('hasVaccinated', hasVaccinated)
          ..add('hasSterilised', hasSterilised)
          ..add('sex', sex)
          ..add('weightUnit', weightUnit)
          ..add('breed', breed)
          ..add('hasDiarrhea', hasDiarrhea)
          ..add('hasEarmites', hasEarmites)
          ..add('hasFleas', hasFleas)
          ..add('hasFungus', hasFungus)
          ..add('hasScabies', hasScabies)
          ..add('hasWorms', hasWorms)
          ..add('ownerUid', ownerUid)
          ..add('reference', reference))
        .toString();
  }
}

class PetsRecordBuilder implements Builder<PetsRecord, PetsRecordBuilder> {
  _$PetsRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  DateTime _birthdate;
  DateTime get birthdate => _$this._birthdate;
  set birthdate(DateTime birthdate) => _$this._birthdate = birthdate;

  String _ownerName;
  String get ownerName => _$this._ownerName;
  set ownerName(String ownerName) => _$this._ownerName = ownerName;

  double _weight;
  double get weight => _$this._weight;
  set weight(double weight) => _$this._weight = weight;

  String _condition;
  String get condition => _$this._condition;
  set condition(String condition) => _$this._condition = condition;

  String _pictureUrl;
  String get pictureUrl => _$this._pictureUrl;
  set pictureUrl(String pictureUrl) => _$this._pictureUrl = pictureUrl;

  bool _hasVaccinated;
  bool get hasVaccinated => _$this._hasVaccinated;
  set hasVaccinated(bool hasVaccinated) =>
      _$this._hasVaccinated = hasVaccinated;

  bool _hasSterilised;
  bool get hasSterilised => _$this._hasSterilised;
  set hasSterilised(bool hasSterilised) =>
      _$this._hasSterilised = hasSterilised;

  String _sex;
  String get sex => _$this._sex;
  set sex(String sex) => _$this._sex = sex;

  String _weightUnit;
  String get weightUnit => _$this._weightUnit;
  set weightUnit(String weightUnit) => _$this._weightUnit = weightUnit;

  String _breed;
  String get breed => _$this._breed;
  set breed(String breed) => _$this._breed = breed;

  bool _hasDiarrhea;
  bool get hasDiarrhea => _$this._hasDiarrhea;
  set hasDiarrhea(bool hasDiarrhea) => _$this._hasDiarrhea = hasDiarrhea;

  bool _hasEarmites;
  bool get hasEarmites => _$this._hasEarmites;
  set hasEarmites(bool hasEarmites) => _$this._hasEarmites = hasEarmites;

  bool _hasFleas;
  bool get hasFleas => _$this._hasFleas;
  set hasFleas(bool hasFleas) => _$this._hasFleas = hasFleas;

  bool _hasFungus;
  bool get hasFungus => _$this._hasFungus;
  set hasFungus(bool hasFungus) => _$this._hasFungus = hasFungus;

  bool _hasScabies;
  bool get hasScabies => _$this._hasScabies;
  set hasScabies(bool hasScabies) => _$this._hasScabies = hasScabies;

  bool _hasWorms;
  bool get hasWorms => _$this._hasWorms;
  set hasWorms(bool hasWorms) => _$this._hasWorms = hasWorms;

  DocumentReference<Object> _ownerUid;
  DocumentReference<Object> get ownerUid => _$this._ownerUid;
  set ownerUid(DocumentReference<Object> ownerUid) =>
      _$this._ownerUid = ownerUid;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  PetsRecordBuilder() {
    PetsRecord._initializeBuilder(this);
  }

  PetsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _birthdate = $v.birthdate;
      _ownerName = $v.ownerName;
      _weight = $v.weight;
      _condition = $v.condition;
      _pictureUrl = $v.pictureUrl;
      _hasVaccinated = $v.hasVaccinated;
      _hasSterilised = $v.hasSterilised;
      _sex = $v.sex;
      _weightUnit = $v.weightUnit;
      _breed = $v.breed;
      _hasDiarrhea = $v.hasDiarrhea;
      _hasEarmites = $v.hasEarmites;
      _hasFleas = $v.hasFleas;
      _hasFungus = $v.hasFungus;
      _hasScabies = $v.hasScabies;
      _hasWorms = $v.hasWorms;
      _ownerUid = $v.ownerUid;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PetsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PetsRecord;
  }

  @override
  void update(void Function(PetsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PetsRecord build() {
    final _$result = _$v ??
        new _$PetsRecord._(
            name: name,
            birthdate: birthdate,
            ownerName: ownerName,
            weight: weight,
            condition: condition,
            pictureUrl: pictureUrl,
            hasVaccinated: hasVaccinated,
            hasSterilised: hasSterilised,
            sex: sex,
            weightUnit: weightUnit,
            breed: breed,
            hasDiarrhea: hasDiarrhea,
            hasEarmites: hasEarmites,
            hasFleas: hasFleas,
            hasFungus: hasFungus,
            hasScabies: hasScabies,
            hasWorms: hasWorms,
            ownerUid: ownerUid,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
