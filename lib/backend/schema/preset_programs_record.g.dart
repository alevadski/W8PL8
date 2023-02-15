// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preset_programs_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PresetProgramsRecord> _$presetProgramsRecordSerializer =
    new _$PresetProgramsRecordSerializer();

class _$PresetProgramsRecordSerializer
    implements StructuredSerializer<PresetProgramsRecord> {
  @override
  final Iterable<Type> types = const [
    PresetProgramsRecord,
    _$PresetProgramsRecord
  ];
  @override
  final String wireName = 'PresetProgramsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PresetProgramsRecord object,
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
    value = object.mondayWorkout;
    if (value != null) {
      result
        ..add('mondayWorkout')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(SetStruct)])));
    }
    value = object.tuesdayWorkout;
    if (value != null) {
      result
        ..add('tuesdayWorkout')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(SetStruct)])));
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
  PresetProgramsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PresetProgramsRecordBuilder();

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
        case 'mondayWorkout':
          result.mondayWorkout.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SetStruct)]))!
              as BuiltList<Object?>);
          break;
        case 'tuesdayWorkout':
          result.tuesdayWorkout.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SetStruct)]))!
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

class _$PresetProgramsRecord extends PresetProgramsRecord {
  @override
  final String? name;
  @override
  final BuiltList<SetStruct>? mondayWorkout;
  @override
  final BuiltList<SetStruct>? tuesdayWorkout;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PresetProgramsRecord(
          [void Function(PresetProgramsRecordBuilder)? updates]) =>
      (new PresetProgramsRecordBuilder()..update(updates))._build();

  _$PresetProgramsRecord._(
      {this.name, this.mondayWorkout, this.tuesdayWorkout, this.ffRef})
      : super._();

  @override
  PresetProgramsRecord rebuild(
          void Function(PresetProgramsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PresetProgramsRecordBuilder toBuilder() =>
      new PresetProgramsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PresetProgramsRecord &&
        name == other.name &&
        mondayWorkout == other.mondayWorkout &&
        tuesdayWorkout == other.tuesdayWorkout &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), mondayWorkout.hashCode),
            tuesdayWorkout.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PresetProgramsRecord')
          ..add('name', name)
          ..add('mondayWorkout', mondayWorkout)
          ..add('tuesdayWorkout', tuesdayWorkout)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PresetProgramsRecordBuilder
    implements Builder<PresetProgramsRecord, PresetProgramsRecordBuilder> {
  _$PresetProgramsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<SetStruct>? _mondayWorkout;
  ListBuilder<SetStruct> get mondayWorkout =>
      _$this._mondayWorkout ??= new ListBuilder<SetStruct>();
  set mondayWorkout(ListBuilder<SetStruct>? mondayWorkout) =>
      _$this._mondayWorkout = mondayWorkout;

  ListBuilder<SetStruct>? _tuesdayWorkout;
  ListBuilder<SetStruct> get tuesdayWorkout =>
      _$this._tuesdayWorkout ??= new ListBuilder<SetStruct>();
  set tuesdayWorkout(ListBuilder<SetStruct>? tuesdayWorkout) =>
      _$this._tuesdayWorkout = tuesdayWorkout;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PresetProgramsRecordBuilder() {
    PresetProgramsRecord._initializeBuilder(this);
  }

  PresetProgramsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _mondayWorkout = $v.mondayWorkout?.toBuilder();
      _tuesdayWorkout = $v.tuesdayWorkout?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PresetProgramsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PresetProgramsRecord;
  }

  @override
  void update(void Function(PresetProgramsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PresetProgramsRecord build() => _build();

  _$PresetProgramsRecord _build() {
    _$PresetProgramsRecord _$result;
    try {
      _$result = _$v ??
          new _$PresetProgramsRecord._(
              name: name,
              mondayWorkout: _mondayWorkout?.build(),
              tuesdayWorkout: _tuesdayWorkout?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mondayWorkout';
        _mondayWorkout?.build();
        _$failedField = 'tuesdayWorkout';
        _tuesdayWorkout?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PresetProgramsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
