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
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
        case 'supplementType':
          result.supplementType.replace(serializers.deserialize(value,
                  specifiedType: const FullType(SupplementTypeStruct))!
              as SupplementTypeStruct);
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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
  final SupplementTypeStruct supplementType;
  @override
  final int? amount;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$SupplementIntakeStruct(
          [void Function(SupplementIntakeStructBuilder)? updates]) =>
      (new SupplementIntakeStructBuilder()..update(updates))._build();

  _$SupplementIntakeStruct._(
      {required this.supplementType,
      this.amount,
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
        supplementType == other.supplementType &&
        amount == other.amount &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, supplementType.hashCode), amount.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SupplementIntakeStruct')
          ..add('supplementType', supplementType)
          ..add('amount', amount)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class SupplementIntakeStructBuilder
    implements Builder<SupplementIntakeStruct, SupplementIntakeStructBuilder> {
  _$SupplementIntakeStruct? _$v;

  SupplementTypeStructBuilder? _supplementType;
  SupplementTypeStructBuilder get supplementType =>
      _$this._supplementType ??= new SupplementTypeStructBuilder();
  set supplementType(SupplementTypeStructBuilder? supplementType) =>
      _$this._supplementType = supplementType;

  int? _amount;
  int? get amount => _$this._amount;
  set amount(int? amount) => _$this._amount = amount;

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
      _supplementType = $v.supplementType.toBuilder();
      _amount = $v.amount;
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
              supplementType: supplementType.build(),
              amount: amount,
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
