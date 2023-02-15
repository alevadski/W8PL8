// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repetitions_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RepetitionsRecord> _$repetitionsRecordSerializer =
    new _$RepetitionsRecordSerializer();

class _$RepetitionsRecordSerializer
    implements StructuredSerializer<RepetitionsRecord> {
  @override
  final Iterable<Type> types = const [RepetitionsRecord, _$RepetitionsRecord];
  @override
  final String wireName = 'RepetitionsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, RepetitionsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(RepetitionStruct)),
    ];
    Object? value;
    value = object.exerciseRef;
    if (value != null) {
      result
        ..add('exerciseRef')
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
  RepetitionsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RepetitionsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(RepetitionStruct))!
              as RepetitionStruct);
          break;
        case 'exerciseRef':
          result.exerciseRef = serializers.deserialize(value,
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

class _$RepetitionsRecord extends RepetitionsRecord {
  @override
  final RepetitionStruct data;
  @override
  final DocumentReference<Object?>? exerciseRef;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RepetitionsRecord(
          [void Function(RepetitionsRecordBuilder)? updates]) =>
      (new RepetitionsRecordBuilder()..update(updates))._build();

  _$RepetitionsRecord._({required this.data, this.exerciseRef, this.ffRef})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(data, r'RepetitionsRecord', 'data');
  }

  @override
  RepetitionsRecord rebuild(void Function(RepetitionsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RepetitionsRecordBuilder toBuilder() =>
      new RepetitionsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RepetitionsRecord &&
        data == other.data &&
        exerciseRef == other.exerciseRef &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, data.hashCode), exerciseRef.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RepetitionsRecord')
          ..add('data', data)
          ..add('exerciseRef', exerciseRef)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RepetitionsRecordBuilder
    implements Builder<RepetitionsRecord, RepetitionsRecordBuilder> {
  _$RepetitionsRecord? _$v;

  RepetitionStructBuilder? _data;
  RepetitionStructBuilder get data =>
      _$this._data ??= new RepetitionStructBuilder();
  set data(RepetitionStructBuilder? data) => _$this._data = data;

  DocumentReference<Object?>? _exerciseRef;
  DocumentReference<Object?>? get exerciseRef => _$this._exerciseRef;
  set exerciseRef(DocumentReference<Object?>? exerciseRef) =>
      _$this._exerciseRef = exerciseRef;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RepetitionsRecordBuilder() {
    RepetitionsRecord._initializeBuilder(this);
  }

  RepetitionsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _exerciseRef = $v.exerciseRef;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RepetitionsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RepetitionsRecord;
  }

  @override
  void update(void Function(RepetitionsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RepetitionsRecord build() => _build();

  _$RepetitionsRecord _build() {
    _$RepetitionsRecord _$result;
    try {
      _$result = _$v ??
          new _$RepetitionsRecord._(
              data: data.build(), exerciseRef: exerciseRef, ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RepetitionsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
