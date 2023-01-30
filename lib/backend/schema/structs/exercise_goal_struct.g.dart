// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_goal_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ExerciseGoalStruct> _$exerciseGoalStructSerializer =
    new _$ExerciseGoalStructSerializer();

class _$ExerciseGoalStructSerializer
    implements StructuredSerializer<ExerciseGoalStruct> {
  @override
  final Iterable<Type> types = const [ExerciseGoalStruct, _$ExerciseGoalStruct];
  @override
  final String wireName = 'ExerciseGoalStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ExerciseGoalStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'target',
      serializers.serialize(object.target,
          specifiedType: const FullType(ExerciseGoalTargetStruct)),
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.completedAt;
    if (value != null) {
      result
        ..add('completedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.exerciseType;
    if (value != null) {
      result
        ..add('exerciseType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ExerciseGoalStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExerciseGoalStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'target':
          result.target.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ExerciseGoalTargetStruct))!
              as ExerciseGoalTargetStruct);
          break;
        case 'completedAt':
          result.completedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'exerciseType':
          result.exerciseType = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$ExerciseGoalStruct extends ExerciseGoalStruct {
  @override
  final DateTime? createdAt;
  @override
  final ExerciseGoalTargetStruct target;
  @override
  final DateTime? completedAt;
  @override
  final DocumentReference<Object?>? exerciseType;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$ExerciseGoalStruct(
          [void Function(ExerciseGoalStructBuilder)? updates]) =>
      (new ExerciseGoalStructBuilder()..update(updates))._build();

  _$ExerciseGoalStruct._(
      {this.createdAt,
      required this.target,
      this.completedAt,
      this.exerciseType,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        target, r'ExerciseGoalStruct', 'target');
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'ExerciseGoalStruct', 'firestoreUtilData');
  }

  @override
  ExerciseGoalStruct rebuild(
          void Function(ExerciseGoalStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExerciseGoalStructBuilder toBuilder() =>
      new ExerciseGoalStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExerciseGoalStruct &&
        createdAt == other.createdAt &&
        target == other.target &&
        completedAt == other.completedAt &&
        exerciseType == other.exerciseType &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, createdAt.hashCode), target.hashCode),
                completedAt.hashCode),
            exerciseType.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExerciseGoalStruct')
          ..add('createdAt', createdAt)
          ..add('target', target)
          ..add('completedAt', completedAt)
          ..add('exerciseType', exerciseType)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class ExerciseGoalStructBuilder
    implements Builder<ExerciseGoalStruct, ExerciseGoalStructBuilder> {
  _$ExerciseGoalStruct? _$v;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  ExerciseGoalTargetStructBuilder? _target;
  ExerciseGoalTargetStructBuilder get target =>
      _$this._target ??= new ExerciseGoalTargetStructBuilder();
  set target(ExerciseGoalTargetStructBuilder? target) =>
      _$this._target = target;

  DateTime? _completedAt;
  DateTime? get completedAt => _$this._completedAt;
  set completedAt(DateTime? completedAt) => _$this._completedAt = completedAt;

  DocumentReference<Object?>? _exerciseType;
  DocumentReference<Object?>? get exerciseType => _$this._exerciseType;
  set exerciseType(DocumentReference<Object?>? exerciseType) =>
      _$this._exerciseType = exerciseType;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  ExerciseGoalStructBuilder() {
    ExerciseGoalStruct._initializeBuilder(this);
  }

  ExerciseGoalStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _target = $v.target.toBuilder();
      _completedAt = $v.completedAt;
      _exerciseType = $v.exerciseType;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExerciseGoalStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExerciseGoalStruct;
  }

  @override
  void update(void Function(ExerciseGoalStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExerciseGoalStruct build() => _build();

  _$ExerciseGoalStruct _build() {
    _$ExerciseGoalStruct _$result;
    try {
      _$result = _$v ??
          new _$ExerciseGoalStruct._(
              createdAt: createdAt,
              target: target.build(),
              completedAt: completedAt,
              exerciseType: exerciseType,
              firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                  firestoreUtilData,
                  r'ExerciseGoalStruct',
                  'firestoreUtilData'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'target';
        target.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ExerciseGoalStruct', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
