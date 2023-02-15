// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exercise_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ExerciseStruct> _$exerciseStructSerializer =
    new _$ExerciseStructSerializer();

class _$ExerciseStructSerializer
    implements StructuredSerializer<ExerciseStruct> {
  @override
  final Iterable<Type> types = const [ExerciseStruct, _$ExerciseStruct];
  @override
  final String wireName = 'ExerciseStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, ExerciseStruct object,
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
    value = object.icon;
    if (value != null) {
      result
        ..add('icon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.muscleGroup;
    if (value != null) {
      result
        ..add('muscleGroup')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ExerciseStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ExerciseStructBuilder();

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
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'muscleGroup':
          result.muscleGroup = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$ExerciseStruct extends ExerciseStruct {
  @override
  final String? name;
  @override
  final bool? isDoubleWeight;
  @override
  final bool? isBodyWeight;
  @override
  final String? icon;
  @override
  final String? muscleGroup;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$ExerciseStruct([void Function(ExerciseStructBuilder)? updates]) =>
      (new ExerciseStructBuilder()..update(updates))._build();

  _$ExerciseStruct._(
      {this.name,
      this.isDoubleWeight,
      this.isBodyWeight,
      this.icon,
      this.muscleGroup,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'ExerciseStruct', 'firestoreUtilData');
  }

  @override
  ExerciseStruct rebuild(void Function(ExerciseStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExerciseStructBuilder toBuilder() =>
      new ExerciseStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExerciseStruct &&
        name == other.name &&
        isDoubleWeight == other.isDoubleWeight &&
        isBodyWeight == other.isBodyWeight &&
        icon == other.icon &&
        muscleGroup == other.muscleGroup &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, name.hashCode), isDoubleWeight.hashCode),
                    isBodyWeight.hashCode),
                icon.hashCode),
            muscleGroup.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExerciseStruct')
          ..add('name', name)
          ..add('isDoubleWeight', isDoubleWeight)
          ..add('isBodyWeight', isBodyWeight)
          ..add('icon', icon)
          ..add('muscleGroup', muscleGroup)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class ExerciseStructBuilder
    implements Builder<ExerciseStruct, ExerciseStructBuilder> {
  _$ExerciseStruct? _$v;

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

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  String? _muscleGroup;
  String? get muscleGroup => _$this._muscleGroup;
  set muscleGroup(String? muscleGroup) => _$this._muscleGroup = muscleGroup;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  ExerciseStructBuilder() {
    ExerciseStruct._initializeBuilder(this);
  }

  ExerciseStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _isDoubleWeight = $v.isDoubleWeight;
      _isBodyWeight = $v.isBodyWeight;
      _icon = $v.icon;
      _muscleGroup = $v.muscleGroup;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExerciseStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExerciseStruct;
  }

  @override
  void update(void Function(ExerciseStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExerciseStruct build() => _build();

  _$ExerciseStruct _build() {
    final _$result = _$v ??
        new _$ExerciseStruct._(
            name: name,
            isDoubleWeight: isDoubleWeight,
            isBodyWeight: isBodyWeight,
            icon: icon,
            muscleGroup: muscleGroup,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'ExerciseStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
