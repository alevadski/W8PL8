// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'preset_exercises_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PresetExercisesRecord> _$presetExercisesRecordSerializer =
    new _$PresetExercisesRecordSerializer();

class _$PresetExercisesRecordSerializer
    implements StructuredSerializer<PresetExercisesRecord> {
  @override
  final Iterable<Type> types = const [
    PresetExercisesRecord,
    _$PresetExercisesRecord
  ];
  @override
  final String wireName = 'PresetExercisesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PresetExercisesRecord object,
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
    value = object.isDoubleWeight;
    if (value != null) {
      result
        ..add('isDoubleWeight')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isBodyWeight;
    if (value != null) {
      result
        ..add('isBodyWeight')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.muscleGroup;
    if (value != null) {
      result
        ..add('muscleGroup')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  PresetExercisesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PresetExercisesRecordBuilder();

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
        case 'isDoubleWeight':
          result.isDoubleWeight = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isBodyWeight':
          result.isBodyWeight = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'muscleGroup':
          result.muscleGroup = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$PresetExercisesRecord extends PresetExercisesRecord {
  @override
  final String? name;
  @override
  final bool? isDoubleWeight;
  @override
  final bool? isBodyWeight;
  @override
  final String? muscleGroup;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PresetExercisesRecord(
          [void Function(PresetExercisesRecordBuilder)? updates]) =>
      (new PresetExercisesRecordBuilder()..update(updates))._build();

  _$PresetExercisesRecord._(
      {this.name,
      this.isDoubleWeight,
      this.isBodyWeight,
      this.muscleGroup,
      this.ffRef})
      : super._();

  @override
  PresetExercisesRecord rebuild(
          void Function(PresetExercisesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PresetExercisesRecordBuilder toBuilder() =>
      new PresetExercisesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PresetExercisesRecord &&
        name == other.name &&
        isDoubleWeight == other.isDoubleWeight &&
        isBodyWeight == other.isBodyWeight &&
        muscleGroup == other.muscleGroup &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, name.hashCode), isDoubleWeight.hashCode),
                isBodyWeight.hashCode),
            muscleGroup.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PresetExercisesRecord')
          ..add('name', name)
          ..add('isDoubleWeight', isDoubleWeight)
          ..add('isBodyWeight', isBodyWeight)
          ..add('muscleGroup', muscleGroup)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PresetExercisesRecordBuilder
    implements Builder<PresetExercisesRecord, PresetExercisesRecordBuilder> {
  _$PresetExercisesRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  bool? _isDoubleWeight;
  bool? get isDoubleWeight => _$this._isDoubleWeight;
  set isDoubleWeight(bool? isDoubleWeight) =>
      _$this._isDoubleWeight = isDoubleWeight;

  bool? _isBodyWeight;
  bool? get isBodyWeight => _$this._isBodyWeight;
  set isBodyWeight(bool? isBodyWeight) => _$this._isBodyWeight = isBodyWeight;

  String? _muscleGroup;
  String? get muscleGroup => _$this._muscleGroup;
  set muscleGroup(String? muscleGroup) => _$this._muscleGroup = muscleGroup;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PresetExercisesRecordBuilder() {
    PresetExercisesRecord._initializeBuilder(this);
  }

  PresetExercisesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _isDoubleWeight = $v.isDoubleWeight;
      _isBodyWeight = $v.isBodyWeight;
      _muscleGroup = $v.muscleGroup;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PresetExercisesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PresetExercisesRecord;
  }

  @override
  void update(void Function(PresetExercisesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PresetExercisesRecord build() => _build();

  _$PresetExercisesRecord _build() {
    final _$result = _$v ??
        new _$PresetExercisesRecord._(
            name: name,
            isDoubleWeight: isDoubleWeight,
            isBodyWeight: isBodyWeight,
            muscleGroup: muscleGroup,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
