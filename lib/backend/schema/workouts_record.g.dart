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
    value = object.timestamp;
    if (value != null) {
      result
        ..add('timestamp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.note;
    if (value != null) {
      result
        ..add('note')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.totalLifted;
    if (value != null) {
      result
        ..add('total_lifted')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.index;
    if (value != null) {
      result
        ..add('index')
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
        case 'timestamp':
          result.timestamp = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'note':
          result.note = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'total_lifted':
          result.totalLifted = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'index':
          result.index = serializers.deserialize(value,
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
  final DateTime? timestamp;
  @override
  final String? note;
  @override
  final String? name;
  @override
  final double? totalLifted;
  @override
  final int? index;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$WorkoutsRecord([void Function(WorkoutsRecordBuilder)? updates]) =>
      (new WorkoutsRecordBuilder()..update(updates))._build();

  _$WorkoutsRecord._(
      {this.timestamp,
      this.note,
      this.name,
      this.totalLifted,
      this.index,
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
        timestamp == other.timestamp &&
        note == other.note &&
        name == other.name &&
        totalLifted == other.totalLifted &&
        index == other.index &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, timestamp.hashCode), note.hashCode),
                    name.hashCode),
                totalLifted.hashCode),
            index.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkoutsRecord')
          ..add('timestamp', timestamp)
          ..add('note', note)
          ..add('name', name)
          ..add('totalLifted', totalLifted)
          ..add('index', index)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class WorkoutsRecordBuilder
    implements Builder<WorkoutsRecord, WorkoutsRecordBuilder> {
  _$WorkoutsRecord? _$v;

  DateTime? _timestamp;
  DateTime? get timestamp => _$this._timestamp;
  set timestamp(DateTime? timestamp) => _$this._timestamp = timestamp;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  double? _totalLifted;
  double? get totalLifted => _$this._totalLifted;
  set totalLifted(double? totalLifted) => _$this._totalLifted = totalLifted;

  int? _index;
  int? get index => _$this._index;
  set index(int? index) => _$this._index = index;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  WorkoutsRecordBuilder() {
    WorkoutsRecord._initializeBuilder(this);
  }

  WorkoutsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _timestamp = $v.timestamp;
      _note = $v.note;
      _name = $v.name;
      _totalLifted = $v.totalLifted;
      _index = $v.index;
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
    final _$result = _$v ??
        new _$WorkoutsRecord._(
            timestamp: timestamp,
            note: note,
            name: name,
            totalLifted: totalLifted,
            index: index,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
