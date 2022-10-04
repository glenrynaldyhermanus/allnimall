// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faqs_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FaqsRecord> _$faqsRecordSerializer = new _$FaqsRecordSerializer();

class _$FaqsRecordSerializer implements StructuredSerializer<FaqsRecord> {
  @override
  final Iterable<Type> types = const [FaqsRecord, _$FaqsRecord];
  @override
  final String wireName = 'FaqsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FaqsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.question;
    if (value != null) {
      result
        ..add('question')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.answer;
    if (value != null) {
      result
        ..add('answer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.referenceUrl;
    if (value != null) {
      result
        ..add('reference_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.referenceName;
    if (value != null) {
      result
        ..add('reference_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.visitCount;
    if (value != null) {
      result
        ..add('visit_count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  FaqsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FaqsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'question':
          result.question = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'answer':
          result.answer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'reference_url':
          result.referenceUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'reference_name':
          result.referenceName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'visit_count':
          result.visitCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$FaqsRecord extends FaqsRecord {
  @override
  final String? question;
  @override
  final String? answer;
  @override
  final String? referenceUrl;
  @override
  final String? referenceName;
  @override
  final int? visitCount;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FaqsRecord([void Function(FaqsRecordBuilder)? updates]) =>
      (new FaqsRecordBuilder()..update(updates))._build();

  _$FaqsRecord._(
      {this.question,
      this.answer,
      this.referenceUrl,
      this.referenceName,
      this.visitCount,
      this.ffRef})
      : super._();

  @override
  FaqsRecord rebuild(void Function(FaqsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FaqsRecordBuilder toBuilder() => new FaqsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FaqsRecord &&
        question == other.question &&
        answer == other.answer &&
        referenceUrl == other.referenceUrl &&
        referenceName == other.referenceName &&
        visitCount == other.visitCount &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, question.hashCode), answer.hashCode),
                    referenceUrl.hashCode),
                referenceName.hashCode),
            visitCount.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FaqsRecord')
          ..add('question', question)
          ..add('answer', answer)
          ..add('referenceUrl', referenceUrl)
          ..add('referenceName', referenceName)
          ..add('visitCount', visitCount)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FaqsRecordBuilder implements Builder<FaqsRecord, FaqsRecordBuilder> {
  _$FaqsRecord? _$v;

  String? _question;
  String? get question => _$this._question;
  set question(String? question) => _$this._question = question;

  String? _answer;
  String? get answer => _$this._answer;
  set answer(String? answer) => _$this._answer = answer;

  String? _referenceUrl;
  String? get referenceUrl => _$this._referenceUrl;
  set referenceUrl(String? referenceUrl) => _$this._referenceUrl = referenceUrl;

  String? _referenceName;
  String? get referenceName => _$this._referenceName;
  set referenceName(String? referenceName) =>
      _$this._referenceName = referenceName;

  int? _visitCount;
  int? get visitCount => _$this._visitCount;
  set visitCount(int? visitCount) => _$this._visitCount = visitCount;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FaqsRecordBuilder() {
    FaqsRecord._initializeBuilder(this);
  }

  FaqsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _question = $v.question;
      _answer = $v.answer;
      _referenceUrl = $v.referenceUrl;
      _referenceName = $v.referenceName;
      _visitCount = $v.visitCount;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FaqsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FaqsRecord;
  }

  @override
  void update(void Function(FaqsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FaqsRecord build() => _build();

  _$FaqsRecord _build() {
    final _$result = _$v ??
        new _$FaqsRecord._(
            question: question,
            answer: answer,
            referenceUrl: referenceUrl,
            referenceName: referenceName,
            visitCount: visitCount,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
