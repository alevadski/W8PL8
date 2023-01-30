// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'streak_goal_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StreakGoalStruct> _$streakGoalStructSerializer =
    new _$StreakGoalStructSerializer();

class _$StreakGoalStructSerializer
    implements StructuredSerializer<StreakGoalStruct> {
  @override
  final Iterable<Type> types = const [StreakGoalStruct, _$StreakGoalStruct];
  @override
  final String wireName = 'StreakGoalStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, StreakGoalStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.times;
    if (value != null) {
      result
        ..add('times')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.days;
    if (value != null) {
      result
        ..add('days')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
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
    return result;
  }

  @override
  StreakGoalStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StreakGoalStructBuilder();

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
        case 'times':
          result.times = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'days':
          result.days = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'completedAt':
          result.completedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$StreakGoalStruct extends StreakGoalStruct {
  @override
  final String? name;
  @override
  final int? times;
  @override
  final int? days;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? completedAt;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$StreakGoalStruct(
          [void Function(StreakGoalStructBuilder)? updates]) =>
      (new StreakGoalStructBuilder()..update(updates))._build();

  _$StreakGoalStruct._(
      {this.name,
      this.times,
      this.days,
      this.createdAt,
      this.completedAt,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'StreakGoalStruct', 'firestoreUtilData');
  }

  @override
  StreakGoalStruct rebuild(void Function(StreakGoalStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StreakGoalStructBuilder toBuilder() =>
      new StreakGoalStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StreakGoalStruct &&
        name == other.name &&
        times == other.times &&
        days == other.days &&
        createdAt == other.createdAt &&
        completedAt == other.completedAt &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, name.hashCode), times.hashCode), days.hashCode),
                createdAt.hashCode),
            completedAt.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StreakGoalStruct')
          ..add('name', name)
          ..add('times', times)
          ..add('days', days)
          ..add('createdAt', createdAt)
          ..add('completedAt', completedAt)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class StreakGoalStructBuilder
    implements Builder<StreakGoalStruct, StreakGoalStructBuilder> {
  _$StreakGoalStruct? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _times;
  int? get times => _$this._times;
  set times(int? times) => _$this._times = times;

  int? _days;
  int? get days => _$this._days;
  set days(int? days) => _$this._days = days;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _completedAt;
  DateTime? get completedAt => _$this._completedAt;
  set completedAt(DateTime? completedAt) => _$this._completedAt = completedAt;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  StreakGoalStructBuilder() {
    StreakGoalStruct._initializeBuilder(this);
  }

  StreakGoalStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _times = $v.times;
      _days = $v.days;
      _createdAt = $v.createdAt;
      _completedAt = $v.completedAt;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StreakGoalStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StreakGoalStruct;
  }

  @override
  void update(void Function(StreakGoalStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StreakGoalStruct build() => _build();

  _$StreakGoalStruct _build() {
    final _$result = _$v ??
        new _$StreakGoalStruct._(
            name: name,
            times: times,
            days: days,
            createdAt: createdAt,
            completedAt: completedAt,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'StreakGoalStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
