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
    value = object.startedAt;
    if (value != null) {
      result
        ..add('startedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.endedAt;
    if (value != null) {
      result
        ..add('endedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.totalLifted;
    if (value != null) {
      result
        ..add('totalLifted')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.userRef;
    if (value != null) {
      result
        ..add('userRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.muscleGroups;
    if (value != null) {
      result
        ..add('muscleGroups')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
        case 'startedAt':
          result.startedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'endedAt':
          result.endedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'totalLifted':
          result.totalLifted = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'userRef':
          result.userRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'muscleGroups':
          result.muscleGroups.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
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
  final DateTime? startedAt;
  @override
  final DateTime? endedAt;
  @override
  final double? totalLifted;
  @override
  final DocumentReference<Object?>? userRef;
  @override
  final BuiltList<String>? muscleGroups;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$WorkoutsRecord([void Function(WorkoutsRecordBuilder)? updates]) =>
      (new WorkoutsRecordBuilder()..update(updates))._build();

  _$WorkoutsRecord._(
      {this.startedAt,
      this.endedAt,
      this.totalLifted,
      this.userRef,
      this.muscleGroups,
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
        startedAt == other.startedAt &&
        endedAt == other.endedAt &&
        totalLifted == other.totalLifted &&
        userRef == other.userRef &&
        muscleGroups == other.muscleGroups &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, startedAt.hashCode), endedAt.hashCode),
                    totalLifted.hashCode),
                userRef.hashCode),
            muscleGroups.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkoutsRecord')
          ..add('startedAt', startedAt)
          ..add('endedAt', endedAt)
          ..add('totalLifted', totalLifted)
          ..add('userRef', userRef)
          ..add('muscleGroups', muscleGroups)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class WorkoutsRecordBuilder
    implements Builder<WorkoutsRecord, WorkoutsRecordBuilder> {
  _$WorkoutsRecord? _$v;

  DateTime? _startedAt;
  DateTime? get startedAt => _$this._startedAt;
  set startedAt(DateTime? startedAt) => _$this._startedAt = startedAt;

  DateTime? _endedAt;
  DateTime? get endedAt => _$this._endedAt;
  set endedAt(DateTime? endedAt) => _$this._endedAt = endedAt;

  double? _totalLifted;
  double? get totalLifted => _$this._totalLifted;
  set totalLifted(double? totalLifted) => _$this._totalLifted = totalLifted;

  DocumentReference<Object?>? _userRef;
  DocumentReference<Object?>? get userRef => _$this._userRef;
  set userRef(DocumentReference<Object?>? userRef) => _$this._userRef = userRef;

  ListBuilder<String>? _muscleGroups;
  ListBuilder<String> get muscleGroups =>
      _$this._muscleGroups ??= new ListBuilder<String>();
  set muscleGroups(ListBuilder<String>? muscleGroups) =>
      _$this._muscleGroups = muscleGroups;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  WorkoutsRecordBuilder() {
    WorkoutsRecord._initializeBuilder(this);
  }

  WorkoutsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _startedAt = $v.startedAt;
      _endedAt = $v.endedAt;
      _totalLifted = $v.totalLifted;
      _userRef = $v.userRef;
      _muscleGroups = $v.muscleGroups?.toBuilder();
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
              startedAt: startedAt,
              endedAt: endedAt,
              totalLifted: totalLifted,
              userRef: userRef,
              muscleGroups: _muscleGroups?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'muscleGroups';
        _muscleGroups?.build();
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
