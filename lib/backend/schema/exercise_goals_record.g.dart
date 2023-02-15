// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_goals_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ExerciseGoalsRecord> _$exerciseGoalsRecordSerializer =
    new _$ExerciseGoalsRecordSerializer();

class _$ExerciseGoalsRecordSerializer
    implements StructuredSerializer<ExerciseGoalsRecord> {
  @override
  final Iterable<Type> types = const [
    ExerciseGoalsRecord,
    _$ExerciseGoalsRecord
  ];
  @override
  final String wireName = 'ExerciseGoalsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ExerciseGoalsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(ExerciseGoalStruct)),
    ];
    Object? value;
    value = object.userRef;
    if (value != null) {
      result
        ..add('userRef')
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
  ExerciseGoalsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExerciseGoalsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userRef':
          result.userRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ExerciseGoalStruct))!
              as ExerciseGoalStruct);
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

class _$ExerciseGoalsRecord extends ExerciseGoalsRecord {
  @override
  final DocumentReference<Object?>? userRef;
  @override
  final ExerciseGoalStruct data;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ExerciseGoalsRecord(
          [void Function(ExerciseGoalsRecordBuilder)? updates]) =>
      (new ExerciseGoalsRecordBuilder()..update(updates))._build();

  _$ExerciseGoalsRecord._({this.userRef, required this.data, this.ffRef})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(data, r'ExerciseGoalsRecord', 'data');
  }

  @override
  ExerciseGoalsRecord rebuild(
          void Function(ExerciseGoalsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExerciseGoalsRecordBuilder toBuilder() =>
      new ExerciseGoalsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExerciseGoalsRecord &&
        userRef == other.userRef &&
        data == other.data &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, userRef.hashCode), data.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExerciseGoalsRecord')
          ..add('userRef', userRef)
          ..add('data', data)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ExerciseGoalsRecordBuilder
    implements Builder<ExerciseGoalsRecord, ExerciseGoalsRecordBuilder> {
  _$ExerciseGoalsRecord? _$v;

  DocumentReference<Object?>? _userRef;
  DocumentReference<Object?>? get userRef => _$this._userRef;
  set userRef(DocumentReference<Object?>? userRef) => _$this._userRef = userRef;

  ExerciseGoalStructBuilder? _data;
  ExerciseGoalStructBuilder get data =>
      _$this._data ??= new ExerciseGoalStructBuilder();
  set data(ExerciseGoalStructBuilder? data) => _$this._data = data;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ExerciseGoalsRecordBuilder() {
    ExerciseGoalsRecord._initializeBuilder(this);
  }

  ExerciseGoalsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userRef = $v.userRef;
      _data = $v.data.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExerciseGoalsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExerciseGoalsRecord;
  }

  @override
  void update(void Function(ExerciseGoalsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExerciseGoalsRecord build() => _build();

  _$ExerciseGoalsRecord _build() {
    _$ExerciseGoalsRecord _$result;
    try {
      _$result = _$v ??
          new _$ExerciseGoalsRecord._(
              userRef: userRef, data: data.build(), ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ExerciseGoalsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
