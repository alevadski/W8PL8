// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goals_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GoalsStruct> _$goalsStructSerializer = new _$GoalsStructSerializer();

class _$GoalsStructSerializer implements StructuredSerializer<GoalsStruct> {
  @override
  final Iterable<Type> types = const [GoalsStruct, _$GoalsStruct];
  @override
  final String wireName = 'GoalsStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, GoalsStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'streakGoals',
      serializers.serialize(object.streakGoals,
          specifiedType: const FullType(
              BuiltList, const [const FullType(StreakGoalStruct)])),
      'exerciseGoals',
      serializers.serialize(object.exerciseGoals,
          specifiedType: const FullType(
              BuiltList, const [const FullType(ExerciseGoalStruct)])),
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];

    return result;
  }

  @override
  GoalsStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GoalsStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'streakGoals':
          result.streakGoals.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(StreakGoalStruct)]))!
              as BuiltList<Object?>);
          break;
        case 'exerciseGoals':
          result.exerciseGoals.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ExerciseGoalStruct)]))!
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

class _$GoalsStruct extends GoalsStruct {
  @override
  final BuiltList<StreakGoalStruct> streakGoals;
  @override
  final BuiltList<ExerciseGoalStruct> exerciseGoals;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$GoalsStruct([void Function(GoalsStructBuilder)? updates]) =>
      (new GoalsStructBuilder()..update(updates))._build();

  _$GoalsStruct._(
      {required this.streakGoals,
      required this.exerciseGoals,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        streakGoals, r'GoalsStruct', 'streakGoals');
    BuiltValueNullFieldError.checkNotNull(
        exerciseGoals, r'GoalsStruct', 'exerciseGoals');
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'GoalsStruct', 'firestoreUtilData');
  }

  @override
  GoalsStruct rebuild(void Function(GoalsStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GoalsStructBuilder toBuilder() => new GoalsStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GoalsStruct &&
        streakGoals == other.streakGoals &&
        exerciseGoals == other.exerciseGoals &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, streakGoals.hashCode), exerciseGoals.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GoalsStruct')
          ..add('streakGoals', streakGoals)
          ..add('exerciseGoals', exerciseGoals)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class GoalsStructBuilder implements Builder<GoalsStruct, GoalsStructBuilder> {
  _$GoalsStruct? _$v;

  ListBuilder<StreakGoalStruct>? _streakGoals;
  ListBuilder<StreakGoalStruct> get streakGoals =>
      _$this._streakGoals ??= new ListBuilder<StreakGoalStruct>();
  set streakGoals(ListBuilder<StreakGoalStruct>? streakGoals) =>
      _$this._streakGoals = streakGoals;

  ListBuilder<ExerciseGoalStruct>? _exerciseGoals;
  ListBuilder<ExerciseGoalStruct> get exerciseGoals =>
      _$this._exerciseGoals ??= new ListBuilder<ExerciseGoalStruct>();
  set exerciseGoals(ListBuilder<ExerciseGoalStruct>? exerciseGoals) =>
      _$this._exerciseGoals = exerciseGoals;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  GoalsStructBuilder() {
    GoalsStruct._initializeBuilder(this);
  }

  GoalsStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _streakGoals = $v.streakGoals.toBuilder();
      _exerciseGoals = $v.exerciseGoals.toBuilder();
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GoalsStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GoalsStruct;
  }

  @override
  void update(void Function(GoalsStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GoalsStruct build() => _build();

  _$GoalsStruct _build() {
    _$GoalsStruct _$result;
    try {
      _$result = _$v ??
          new _$GoalsStruct._(
              streakGoals: streakGoals.build(),
              exerciseGoals: exerciseGoals.build(),
              firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                  firestoreUtilData, r'GoalsStruct', 'firestoreUtilData'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'streakGoals';
        streakGoals.build();
        _$failedField = 'exerciseGoals';
        exerciseGoals.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GoalsStruct', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
