// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repetition_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RepetitionStruct> _$repetitionStructSerializer =
    new _$RepetitionStructSerializer();

class _$RepetitionStructSerializer
    implements StructuredSerializer<RepetitionStruct> {
  @override
  final Iterable<Type> types = const [RepetitionStruct, _$RepetitionStruct];
  @override
  final String wireName = 'RepetitionStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, RepetitionStruct object,
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
    value = object.times;
    if (value != null) {
      result
        ..add('times')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.exercise;
    if (value != null) {
      result
        ..add('exercise')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  RepetitionStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RepetitionStructBuilder();

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
        case 'times':
          result.times = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'exercise':
          result.exercise = serializers.deserialize(value,
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

class _$RepetitionStruct extends RepetitionStruct {
  @override
  final double? weight;
  @override
  final int? times;
  @override
  final DocumentReference<Object?>? exercise;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$RepetitionStruct(
          [void Function(RepetitionStructBuilder)? updates]) =>
      (new RepetitionStructBuilder()..update(updates))._build();

  _$RepetitionStruct._(
      {this.weight, this.times, this.exercise, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'RepetitionStruct', 'firestoreUtilData');
  }

  @override
  RepetitionStruct rebuild(void Function(RepetitionStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RepetitionStructBuilder toBuilder() =>
      new RepetitionStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RepetitionStruct &&
        weight == other.weight &&
        times == other.times &&
        exercise == other.exercise &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, weight.hashCode), times.hashCode), exercise.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RepetitionStruct')
          ..add('weight', weight)
          ..add('times', times)
          ..add('exercise', exercise)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class RepetitionStructBuilder
    implements Builder<RepetitionStruct, RepetitionStructBuilder> {
  _$RepetitionStruct? _$v;

  double? _weight;
  double? get weight => _$this._weight;
  set weight(double? weight) => _$this._weight = weight;

  int? _times;
  int? get times => _$this._times;
  set times(int? times) => _$this._times = times;

  DocumentReference<Object?>? _exercise;
  DocumentReference<Object?>? get exercise => _$this._exercise;
  set exercise(DocumentReference<Object?>? exercise) =>
      _$this._exercise = exercise;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  RepetitionStructBuilder() {
    RepetitionStruct._initializeBuilder(this);
  }

  RepetitionStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _weight = $v.weight;
      _times = $v.times;
      _exercise = $v.exercise;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RepetitionStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RepetitionStruct;
  }

  @override
  void update(void Function(RepetitionStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RepetitionStruct build() => _build();

  _$RepetitionStruct _build() {
    final _$result = _$v ??
        new _$RepetitionStruct._(
            weight: weight,
            times: times,
            exercise: exercise,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'RepetitionStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
