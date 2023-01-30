// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplement_type_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SupplementTypeStruct> _$supplementTypeStructSerializer =
    new _$SupplementTypeStructSerializer();

class _$SupplementTypeStructSerializer
    implements StructuredSerializer<SupplementTypeStruct> {
  @override
  final Iterable<Type> types = const [
    SupplementTypeStruct,
    _$SupplementTypeStruct
  ];
  @override
  final String wireName = 'SupplementTypeStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SupplementTypeStruct object,
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
    value = object.color;
    if (value != null) {
      result
        ..add('color')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SupplementTypeStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SupplementTypeStructBuilder();

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
        case 'color':
          result.color = serializers.deserialize(value,
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

class _$SupplementTypeStruct extends SupplementTypeStruct {
  @override
  final String? name;
  @override
  final String? color;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$SupplementTypeStruct(
          [void Function(SupplementTypeStructBuilder)? updates]) =>
      (new SupplementTypeStructBuilder()..update(updates))._build();

  _$SupplementTypeStruct._(
      {this.name, this.color, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'SupplementTypeStruct', 'firestoreUtilData');
  }

  @override
  SupplementTypeStruct rebuild(
          void Function(SupplementTypeStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SupplementTypeStructBuilder toBuilder() =>
      new SupplementTypeStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SupplementTypeStruct &&
        name == other.name &&
        color == other.color &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, name.hashCode), color.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SupplementTypeStruct')
          ..add('name', name)
          ..add('color', color)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class SupplementTypeStructBuilder
    implements Builder<SupplementTypeStruct, SupplementTypeStructBuilder> {
  _$SupplementTypeStruct? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  SupplementTypeStructBuilder() {
    SupplementTypeStruct._initializeBuilder(this);
  }

  SupplementTypeStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _color = $v.color;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SupplementTypeStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SupplementTypeStruct;
  }

  @override
  void update(void Function(SupplementTypeStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SupplementTypeStruct build() => _build();

  _$SupplementTypeStruct _build() {
    final _$result = _$v ??
        new _$SupplementTypeStruct._(
            name: name,
            color: color,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData,
                r'SupplementTypeStruct',
                'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
