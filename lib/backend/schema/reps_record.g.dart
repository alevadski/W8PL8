// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reps_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RepsRecord> _$repsRecordSerializer = new _$RepsRecordSerializer();

class _$RepsRecordSerializer implements StructuredSerializer<RepsRecord> {
  @override
  final Iterable<Type> types = const [RepsRecord, _$RepsRecord];
  @override
  final String wireName = 'RepsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, RepsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.exercise;
    if (value != null) {
      result
        ..add('exercise')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.weight;
    if (value != null) {
      result
        ..add('weight')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.count;
    if (value != null) {
      result
        ..add('count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.totalLifted;
    if (value != null) {
      result
        ..add('total_lifted')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.exerciseName;
    if (value != null) {
      result
        ..add('exercise_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.timestamp;
    if (value != null) {
      result
        ..add('timestamp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  RepsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RepsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'exercise':
          result.exercise = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'weight':
          result.weight = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'total_lifted':
          result.totalLifted = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'exercise_name':
          result.exerciseName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'timestamp':
          result.timestamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$RepsRecord extends RepsRecord {
  @override
  final DocumentReference<Object?>? exercise;
  @override
  final int? weight;
  @override
  final int? count;
  @override
  final double? totalLifted;
  @override
  final String? exerciseName;
  @override
  final DateTime? timestamp;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RepsRecord([void Function(RepsRecordBuilder)? updates]) =>
      (new RepsRecordBuilder()..update(updates))._build();

  _$RepsRecord._(
      {this.exercise,
      this.weight,
      this.count,
      this.totalLifted,
      this.exerciseName,
      this.timestamp,
      this.ffRef})
      : super._();

  @override
  RepsRecord rebuild(void Function(RepsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RepsRecordBuilder toBuilder() => new RepsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RepsRecord &&
        exercise == other.exercise &&
        weight == other.weight &&
        count == other.count &&
        totalLifted == other.totalLifted &&
        exerciseName == other.exerciseName &&
        timestamp == other.timestamp &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, exercise.hashCode), weight.hashCode),
                        count.hashCode),
                    totalLifted.hashCode),
                exerciseName.hashCode),
            timestamp.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RepsRecord')
          ..add('exercise', exercise)
          ..add('weight', weight)
          ..add('count', count)
          ..add('totalLifted', totalLifted)
          ..add('exerciseName', exerciseName)
          ..add('timestamp', timestamp)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RepsRecordBuilder implements Builder<RepsRecord, RepsRecordBuilder> {
  _$RepsRecord? _$v;

  DocumentReference<Object?>? _exercise;
  DocumentReference<Object?>? get exercise => _$this._exercise;
  set exercise(DocumentReference<Object?>? exercise) =>
      _$this._exercise = exercise;

  int? _weight;
  int? get weight => _$this._weight;
  set weight(int? weight) => _$this._weight = weight;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  double? _totalLifted;
  double? get totalLifted => _$this._totalLifted;
  set totalLifted(double? totalLifted) => _$this._totalLifted = totalLifted;

  String? _exerciseName;
  String? get exerciseName => _$this._exerciseName;
  set exerciseName(String? exerciseName) => _$this._exerciseName = exerciseName;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RepsRecordBuilder() {
    RepsRecord._initializeBuilder(this);
  }

  RepsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _exercise = $v.exercise;
      _weight = $v.weight;
      _count = $v.count;
      _totalLifted = $v.totalLifted;
      _exerciseName = $v.exerciseName;
      _timestamp = $v.timestamp;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RepsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RepsRecord;
  }

  @override
  void update(void Function(RepsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RepsRecord build() => _build();

  _$RepsRecord _build() {
    final _$result = _$v ??
        new _$RepsRecord._(
            exercise: exercise,
            weight: weight,
            count: count,
            totalLifted: totalLifted,
            exerciseName: exerciseName,
            timestamp: timestamp,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
