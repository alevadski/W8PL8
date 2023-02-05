// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplement_intake_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SupplementIntakeStruct> _$supplementIntakeStructSerializer =
    new _$SupplementIntakeStructSerializer();

class _$SupplementIntakeStructSerializer
    implements StructuredSerializer<SupplementIntakeStruct> {
  @override
  final Iterable<Type> types = const [
    SupplementIntakeStruct,
    _$SupplementIntakeStruct
  ];
  @override
  final String wireName = 'SupplementIntakeStruct';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SupplementIntakeStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'supplementType',
      serializers.serialize(object.supplementType,
          specifiedType: const FullType(SupplementTypeStruct)),
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.supUnitType;
    if (value != null) {
      result
        ..add('supUnitType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SupplementIntakeStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SupplementIntakeStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'supplementType':
          result.supplementType.replace(serializers.deserialize(value,
                  specifiedType: const FullType(SupplementTypeStruct))!
              as SupplementTypeStruct);
          break;
        case 'supUnitType':
          result.supUnitType = serializers.deserialize(value,
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

class _$SupplementIntakeStruct extends SupplementIntakeStruct {
  @override
  final double? amount;
  @override
  final SupplementTypeStruct supplementType;
  @override
  final String? supUnitType;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$SupplementIntakeStruct(
          [void Function(SupplementIntakeStructBuilder)? updates]) =>
      (new SupplementIntakeStructBuilder()..update(updates))._build();

  _$SupplementIntakeStruct._(
      {this.amount,
      required this.supplementType,
      this.supUnitType,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        supplementType, r'SupplementIntakeStruct', 'supplementType');
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'SupplementIntakeStruct', 'firestoreUtilData');
  }

  @override
  SupplementIntakeStruct rebuild(
          void Function(SupplementIntakeStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SupplementIntakeStructBuilder toBuilder() =>
      new SupplementIntakeStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SupplementIntakeStruct &&
        amount == other.amount &&
        supplementType == other.supplementType &&
        supUnitType == other.supUnitType &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, amount.hashCode), supplementType.hashCode),
            supUnitType.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SupplementIntakeStruct')
          ..add('amount', amount)
          ..add('supplementType', supplementType)
          ..add('supUnitType', supUnitType)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class SupplementIntakeStructBuilder
    implements Builder<SupplementIntakeStruct, SupplementIntakeStructBuilder> {
  _$SupplementIntakeStruct? _$v;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(double? amount) => _$this._amount = amount;

  SupplementTypeStructBuilder? _supplementType;
  SupplementTypeStructBuilder get supplementType =>
      _$this._supplementType ??= new SupplementTypeStructBuilder();
  set supplementType(SupplementTypeStructBuilder? supplementType) =>
      _$this._supplementType = supplementType;

  String? _supUnitType;
  String? get supUnitType => _$this._supUnitType;
  set supUnitType(String? supUnitType) => _$this._supUnitType = supUnitType;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  SupplementIntakeStructBuilder() {
    SupplementIntakeStruct._initializeBuilder(this);
  }

  SupplementIntakeStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amount = $v.amount;
      _supplementType = $v.supplementType.toBuilder();
      _supUnitType = $v.supUnitType;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SupplementIntakeStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SupplementIntakeStruct;
  }

  @override
  void update(void Function(SupplementIntakeStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SupplementIntakeStruct build() => _build();

  _$SupplementIntakeStruct _build() {
    _$SupplementIntakeStruct _$result;
    try {
      _$result = _$v ??
          new _$SupplementIntakeStruct._(
              amount: amount,
              supplementType: supplementType.build(),
              supUnitType: supUnitType,
              firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                  firestoreUtilData,
                  r'SupplementIntakeStruct',
                  'firestoreUtilData'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'supplementType';
        supplementType.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SupplementIntakeStruct', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
