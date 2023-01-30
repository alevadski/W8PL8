// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workouts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WorkoutsRecord> _$workoutsRecordSerializer =
    new _$WorkoutsRecordSerializer();

class _$WorkoutsRecordSerializer
    implements StructuredSerializer<WorkoutsRecord> {
  @override
  final Iterable<Type> types = const [WorkoutsRecord, _$WorkoutsRecord];
  @override
  final String wireName = 'WorkoutsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, WorkoutsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
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
    value = object.repetitions;
    if (value != null) {
      result
        ..add('repetitions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(RepetitionStruct)])));
    }
    value = object.totalLifted;
    if (value != null) {
      result
        ..add('totalLifted')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.totalExercises;
    if (value != null) {
      result
        ..add('totalExercises')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  WorkoutsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WorkoutsRecordBuilder();

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
        case 'totalLifted':
          result.totalLifted = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'totalExercises':
          result.totalExercises = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$WorkoutsRecord extends WorkoutsRecord {
  @override
  final DateTime? date;
  @override
  final int? duration;
  @override
  final BuiltList<RepetitionStruct>? repetitions;
  @override
  final double? totalLifted;
  @override
  final int? totalExercises;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$WorkoutsRecord([void Function(WorkoutsRecordBuilder)? updates]) =>
      (new WorkoutsRecordBuilder()..update(updates))._build();

  _$WorkoutsRecord._(
      {this.date,
      this.duration,
      this.repetitions,
      this.totalLifted,
      this.totalExercises,
      this.ffRef})
      : super._();

  @override
  WorkoutsRecord rebuild(void Function(WorkoutsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkoutsRecordBuilder toBuilder() =>
      new WorkoutsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkoutsRecord &&
        date == other.date &&
        duration == other.duration &&
        repetitions == other.repetitions &&
        totalLifted == other.totalLifted &&
        totalExercises == other.totalExercises &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, date.hashCode), duration.hashCode),
                    repetitions.hashCode),
                totalLifted.hashCode),
            totalExercises.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkoutsRecord')
          ..add('date', date)
          ..add('duration', duration)
          ..add('repetitions', repetitions)
          ..add('totalLifted', totalLifted)
          ..add('totalExercises', totalExercises)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class WorkoutsRecordBuilder
    implements Builder<WorkoutsRecord, WorkoutsRecordBuilder> {
  _$WorkoutsRecord? _$v;

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

  double? _totalLifted;
  double? get totalLifted => _$this._totalLifted;
  set totalLifted(double? totalLifted) => _$this._totalLifted = totalLifted;

  int? _totalExercises;
  int? get totalExercises => _$this._totalExercises;
  set totalExercises(int? totalExercises) =>
      _$this._totalExercises = totalExercises;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  WorkoutsRecordBuilder() {
    WorkoutsRecord._initializeBuilder(this);
  }

  WorkoutsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _duration = $v.duration;
      _repetitions = $v.repetitions?.toBuilder();
      _totalLifted = $v.totalLifted;
      _totalExercises = $v.totalExercises;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkoutsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WorkoutsRecord;
  }

  @override
  void update(void Function(WorkoutsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkoutsRecord build() => _build();

  _$WorkoutsRecord _build() {
    _$WorkoutsRecord _$result;
    try {
      _$result = _$v ??
          new _$WorkoutsRecord._(
              date: date,
              duration: duration,
              repetitions: _repetitions?.build(),
              totalLifted: totalLifted,
              totalExercises: totalExercises,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'repetitions';
        _repetitions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WorkoutsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
