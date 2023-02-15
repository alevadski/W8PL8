// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'programs_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProgramsRecord> _$programsRecordSerializer =
    new _$ProgramsRecordSerializer();

class _$ProgramsRecordSerializer
    implements StructuredSerializer<ProgramsRecord> {
  @override
  final Iterable<Type> types = const [ProgramsRecord, _$ProgramsRecord];
  @override
  final String wireName = 'ProgramsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProgramsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userRef;
    if (value != null) {
      result
        ..add('userRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  ProgramsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProgramsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userRef':
          result.userRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$ProgramsRecord extends ProgramsRecord {
  @override
  final DocumentReference<Object?>? userRef;
  @override
  final BuiltList<SetStruct>? mondayWorkout;
  @override
  final BuiltList<SetStruct>? tuesdayWorkout;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ProgramsRecord([void Function(ProgramsRecordBuilder)? updates]) =>
      (new ProgramsRecordBuilder()..update(updates))._build();

  _$ProgramsRecord._(
      {this.userRef, this.mondayWorkout, this.tuesdayWorkout, this.ffRef})
      : super._();

  @override
  ProgramsRecord rebuild(void Function(ProgramsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProgramsRecordBuilder toBuilder() =>
      new ProgramsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProgramsRecord &&
        userRef == other.userRef &&
        mondayWorkout == other.mondayWorkout &&
        tuesdayWorkout == other.tuesdayWorkout &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, userRef.hashCode), mondayWorkout.hashCode),
            tuesdayWorkout.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProgramsRecord')
          ..add('userRef', userRef)
          ..add('mondayWorkout', mondayWorkout)
          ..add('tuesdayWorkout', tuesdayWorkout)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ProgramsRecordBuilder
    implements Builder<ProgramsRecord, ProgramsRecordBuilder> {
  _$ProgramsRecord? _$v;

  DocumentReference<Object?>? _userRef;
  DocumentReference<Object?>? get userRef => _$this._userRef;
  set userRef(DocumentReference<Object?>? userRef) => _$this._userRef = userRef;

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

  ProgramsRecordBuilder() {
    ProgramsRecord._initializeBuilder(this);
  }

  ProgramsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userRef = $v.userRef;
      _mondayWorkout = $v.mondayWorkout?.toBuilder();
      _tuesdayWorkout = $v.tuesdayWorkout?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProgramsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProgramsRecord;
  }

  @override
  void update(void Function(ProgramsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProgramsRecord build() => _build();

  _$ProgramsRecord _build() {
    _$ProgramsRecord _$result;
    try {
      _$result = _$v ??
          new _$ProgramsRecord._(
              userRef: userRef,
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
            r'ProgramsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
