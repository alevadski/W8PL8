// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SetStruct> _$setStructSerializer = new _$SetStructSerializer();

class _$SetStructSerializer implements StructuredSerializer<SetStruct> {
  @override
  final Iterable<Type> types = const [SetStruct, _$SetStruct];
  @override
  final String wireName = 'SetStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, SetStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'exercise',
      serializers.serialize(object.exercise,
          specifiedType: const FullType(ExerciseStruct)),
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.times;
    if (value != null) {
      result
        ..add('times')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.repetitions;
    if (value != null) {
      result
        ..add('repetitions')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(double)])));
    }
    return result;
  }

  @override
  SetStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SetStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'times':
          result.times = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'exercise':
          result.exercise.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ExerciseStruct))!
              as ExerciseStruct);
          break;
        case 'repetitions':
          result.repetitions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(double)]))!
              as BuiltList<Object?>);
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$SetStruct extends SetStruct {
  @override
  final double? times;
  @override
  final ExerciseStruct exercise;
  @override
  final BuiltList<double>? repetitions;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$SetStruct([void Function(SetStructBuilder)? updates]) =>
      (new SetStructBuilder()..update(updates))._build();

  _$SetStruct._(
      {this.times,
      required this.exercise,
      this.repetitions,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(exercise, r'SetStruct', 'exercise');
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'SetStruct', 'firestoreUtilData');
  }

  @override
  SetStruct rebuild(void Function(SetStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetStructBuilder toBuilder() => new SetStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetStruct &&
        times == other.times &&
        exercise == other.exercise &&
        repetitions == other.repetitions &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, times.hashCode), exercise.hashCode),
            repetitions.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SetStruct')
          ..add('times', times)
          ..add('exercise', exercise)
          ..add('repetitions', repetitions)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class SetStructBuilder implements Builder<SetStruct, SetStructBuilder> {
  _$SetStruct? _$v;

  double? _times;
  double? get times => _$this._times;
  set times(double? times) => _$this._times = times;

  ExerciseStructBuilder? _exercise;
  ExerciseStructBuilder get exercise =>
      _$this._exercise ??= new ExerciseStructBuilder();
  set exercise(ExerciseStructBuilder? exercise) => _$this._exercise = exercise;

  ListBuilder<double>? _repetitions;
  ListBuilder<double> get repetitions =>
      _$this._repetitions ??= new ListBuilder<double>();
  set repetitions(ListBuilder<double>? repetitions) =>
      _$this._repetitions = repetitions;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  SetStructBuilder() {
    SetStruct._initializeBuilder(this);
  }

  SetStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _times = $v.times;
      _exercise = $v.exercise.toBuilder();
      _repetitions = $v.repetitions?.toBuilder();
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetStruct;
  }

  @override
  void update(void Function(SetStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SetStruct build() => _build();

  _$SetStruct _build() {
    _$SetStruct _$result;
    try {
      _$result = _$v ??
          new _$SetStruct._(
              times: times,
              exercise: exercise.build(),
              repetitions: _repetitions?.build(),
              firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                  firestoreUtilData, r'SetStruct', 'firestoreUtilData'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'exercise';
        exercise.build();
        _$failedField = 'repetitions';
        _repetitions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SetStruct', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
