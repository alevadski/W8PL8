// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercises_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ExercisesRecord> _$exercisesRecordSerializer =
    new _$ExercisesRecordSerializer();

class _$ExercisesRecordSerializer
    implements StructuredSerializer<ExercisesRecord> {
  @override
  final Iterable<Type> types = const [ExercisesRecord, _$ExercisesRecord];
  @override
  final String wireName = 'ExercisesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ExercisesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.note;
    if (value != null) {
      result
        ..add('note')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reps;
    if (value != null) {
      result
        ..add('reps')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(RepStruct)])));
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
  ExercisesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExercisesRecordBuilder();

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
        case 'note':
          result.note = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'reps':
          result.reps.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(RepStruct)]))!
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

class _$ExercisesRecord extends ExercisesRecord {
  @override
  final String? name;
  @override
  final String? note;
  @override
  final BuiltList<RepStruct>? reps;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ExercisesRecord([void Function(ExercisesRecordBuilder)? updates]) =>
      (new ExercisesRecordBuilder()..update(updates))._build();

  _$ExercisesRecord._({this.name, this.note, this.reps, this.ffRef})
      : super._();

  @override
  ExercisesRecord rebuild(void Function(ExercisesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExercisesRecordBuilder toBuilder() =>
      new ExercisesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExercisesRecord &&
        name == other.name &&
        note == other.note &&
        reps == other.reps &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), note.hashCode), reps.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExercisesRecord')
          ..add('name', name)
          ..add('note', note)
          ..add('reps', reps)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ExercisesRecordBuilder
    implements Builder<ExercisesRecord, ExercisesRecordBuilder> {
  _$ExercisesRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  ListBuilder<RepStruct>? _reps;
  ListBuilder<RepStruct> get reps =>
      _$this._reps ??= new ListBuilder<RepStruct>();
  set reps(ListBuilder<RepStruct>? reps) => _$this._reps = reps;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ExercisesRecordBuilder() {
    ExercisesRecord._initializeBuilder(this);
  }

  ExercisesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _note = $v.note;
      _reps = $v.reps?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExercisesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExercisesRecord;
  }

  @override
  void update(void Function(ExercisesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExercisesRecord build() => _build();

  _$ExercisesRecord _build() {
    _$ExercisesRecord _$result;
    try {
      _$result = _$v ??
          new _$ExercisesRecord._(
              name: name, note: note, reps: _reps?.build(), ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'reps';
        _reps?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ExercisesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
