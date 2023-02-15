// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'muscle_group_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MuscleGroupStruct> _$muscleGroupStructSerializer =
    new _$MuscleGroupStructSerializer();

class _$MuscleGroupStructSerializer
    implements StructuredSerializer<MuscleGroupStruct> {
  @override
  final Iterable<Type> types = const [MuscleGroupStruct, _$MuscleGroupStruct];
  @override
  final String wireName = 'MuscleGroupStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, MuscleGroupStruct object,
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
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  MuscleGroupStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MuscleGroupStructBuilder();

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
        case 'image':
          result.image = serializers.deserialize(value,
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

class _$MuscleGroupStruct extends MuscleGroupStruct {
  @override
  final String? name;
  @override
  final String? image;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$MuscleGroupStruct(
          [void Function(MuscleGroupStructBuilder)? updates]) =>
      (new MuscleGroupStructBuilder()..update(updates))._build();

  _$MuscleGroupStruct._(
      {this.name, this.image, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'MuscleGroupStruct', 'firestoreUtilData');
  }

  @override
  MuscleGroupStruct rebuild(void Function(MuscleGroupStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MuscleGroupStructBuilder toBuilder() =>
      new MuscleGroupStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MuscleGroupStruct &&
        name == other.name &&
        image == other.image &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, name.hashCode), image.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MuscleGroupStruct')
          ..add('name', name)
          ..add('image', image)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class MuscleGroupStructBuilder
    implements Builder<MuscleGroupStruct, MuscleGroupStructBuilder> {
  _$MuscleGroupStruct? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  MuscleGroupStructBuilder() {
    MuscleGroupStruct._initializeBuilder(this);
  }

  MuscleGroupStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _image = $v.image;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MuscleGroupStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MuscleGroupStruct;
  }

  @override
  void update(void Function(MuscleGroupStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MuscleGroupStruct build() => _build();

  _$MuscleGroupStruct _build() {
    final _$result = _$v ??
        new _$MuscleGroupStruct._(
            name: name,
            image: image,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'MuscleGroupStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
