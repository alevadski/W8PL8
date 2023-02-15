// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_goal_target_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ExerciseGoalTargetStruct> _$exerciseGoalTargetStructSerializer =
    new _$ExerciseGoalTargetStructSerializer();

class _$ExerciseGoalTargetStructSerializer
    implements StructuredSerializer<ExerciseGoalTargetStruct> {
  @override
  final Iterable<Type> types = const [
    ExerciseGoalTargetStruct,
    _$ExerciseGoalTargetStruct
  ];
  @override
  final String wireName = 'ExerciseGoalTargetStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ExerciseGoalTargetStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.weight;
    if (value != null) {
      result
        ..add('weight')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.both;
    if (value != null) {
      result
        ..add('both')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.repetitions;
    if (value != null) {
      result
        ..add('repetitions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  ExerciseGoalTargetStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExerciseGoalTargetStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'weight':
          result.weight = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'both':
          result.both = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'repetitions':
          result.repetitions = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
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

class _$ExerciseGoalTargetStruct extends ExerciseGoalTargetStruct {
  @override
  final double? weight;
  @override
  final bool? both;
  @override
  final double? repetitions;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$ExerciseGoalTargetStruct(
          [void Function(ExerciseGoalTargetStructBuilder)? updates]) =>
      (new ExerciseGoalTargetStructBuilder()..update(updates))._build();

  _$ExerciseGoalTargetStruct._(
      {this.weight,
      this.both,
      this.repetitions,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'ExerciseGoalTargetStruct', 'firestoreUtilData');
  }

  @override
  ExerciseGoalTargetStruct rebuild(
          void Function(ExerciseGoalTargetStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExerciseGoalTargetStructBuilder toBuilder() =>
      new ExerciseGoalTargetStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExerciseGoalTargetStruct &&
        weight == other.weight &&
        both == other.both &&
        repetitions == other.repetitions &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, weight.hashCode), both.hashCode), repetitions.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExerciseGoalTargetStruct')
          ..add('weight', weight)
          ..add('both', both)
          ..add('repetitions', repetitions)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class ExerciseGoalTargetStructBuilder
    implements
        Builder<ExerciseGoalTargetStruct, ExerciseGoalTargetStructBuilder> {
  _$ExerciseGoalTargetStruct? _$v;

  double? _weight;
  double? get weight => _$this._weight;
  set weight(double? weight) => _$this._weight = weight;

  bool? _both;
  bool? get both => _$this._both;
  set both(bool? both) => _$this._both = both;

  double? _repetitions;
  double? get repetitions => _$this._repetitions;
  set repetitions(double? repetitions) => _$this._repetitions = repetitions;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  ExerciseGoalTargetStructBuilder() {
    ExerciseGoalTargetStruct._initializeBuilder(this);
  }

  ExerciseGoalTargetStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _weight = $v.weight;
      _both = $v.both;
      _repetitions = $v.repetitions;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExerciseGoalTargetStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExerciseGoalTargetStruct;
  }

  @override
  void update(void Function(ExerciseGoalTargetStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExerciseGoalTargetStruct build() => _build();

  _$ExerciseGoalTargetStruct _build() {
    final _$result = _$v ??
        new _$ExerciseGoalTargetStruct._(
            weight: weight,
            both: both,
            repetitions: repetitions,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData,
                r'ExerciseGoalTargetStruct',
                'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
