// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WorkoutStruct> _$workoutStructSerializer =
    new _$WorkoutStructSerializer();

class _$WorkoutStructSerializer implements StructuredSerializer<WorkoutStruct> {
  @override
  final Iterable<Type> types = const [WorkoutStruct, _$WorkoutStruct];
  @override
  final String wireName = 'WorkoutStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, WorkoutStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'repetitions',
      serializers.serialize(object.repetitions,
          specifiedType: const FullType(
              BuiltList, const [const FullType(RepetitionStruct)])),
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.duration;
    if (value != null) {
      result
        ..add('duration')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  WorkoutStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WorkoutStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'repetitions':
          result.repetitions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(RepetitionStruct)]))!
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

class _$WorkoutStruct extends WorkoutStruct {
  @override
  final DateTime? date;
  @override
  final int? duration;
  @override
  final BuiltList<RepetitionStruct> repetitions;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$WorkoutStruct([void Function(WorkoutStructBuilder)? updates]) =>
      (new WorkoutStructBuilder()..update(updates))._build();

  _$WorkoutStruct._(
      {this.date,
      this.duration,
      required this.repetitions,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        repetitions, r'WorkoutStruct', 'repetitions');
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'WorkoutStruct', 'firestoreUtilData');
  }

  @override
  WorkoutStruct rebuild(void Function(WorkoutStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkoutStructBuilder toBuilder() => new WorkoutStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkoutStruct &&
        date == other.date &&
        duration == other.duration &&
        repetitions == other.repetitions &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, date.hashCode), duration.hashCode),
            repetitions.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkoutStruct')
          ..add('date', date)
          ..add('duration', duration)
          ..add('repetitions', repetitions)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class WorkoutStructBuilder
    implements Builder<WorkoutStruct, WorkoutStructBuilder> {
  _$WorkoutStruct? _$v;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  int? _duration;
  int? get duration => _$this._duration;
  set duration(int? duration) => _$this._duration = duration;

  ListBuilder<RepetitionStruct>? _repetitions;
  ListBuilder<RepetitionStruct> get repetitions =>
      _$this._repetitions ??= new ListBuilder<RepetitionStruct>();
  set repetitions(ListBuilder<RepetitionStruct>? repetitions) =>
      _$this._repetitions = repetitions;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  WorkoutStructBuilder() {
    WorkoutStruct._initializeBuilder(this);
  }

  WorkoutStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _duration = $v.duration;
      _repetitions = $v.repetitions.toBuilder();
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkoutStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WorkoutStruct;
  }

  @override
  void update(void Function(WorkoutStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkoutStruct build() => _build();

  _$WorkoutStruct _build() {
    _$WorkoutStruct _$result;
    try {
      _$result = _$v ??
          new _$WorkoutStruct._(
              date: date,
              duration: duration,
              repetitions: repetitions.build(),
              firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                  firestoreUtilData, r'WorkoutStruct', 'firestoreUtilData'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'repetitions';
        repetitions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WorkoutStruct', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
