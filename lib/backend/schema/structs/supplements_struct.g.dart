// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplements_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SupplementsStruct> _$supplementsStructSerializer =
    new _$SupplementsStructSerializer();

class _$SupplementsStructSerializer
    implements StructuredSerializer<SupplementsStruct> {
  @override
  final Iterable<Type> types = const [SupplementsStruct, _$SupplementsStruct];
  @override
  final String wireName = 'SupplementsStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, SupplementsStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'customSupplements',
      serializers.serialize(object.customSupplements,
          specifiedType: const FullType(
              BuiltList, const [const FullType(SupplementTypeStruct)])),
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.selectedSupplements;
    if (value != null) {
      result
        ..add('selectedSupplements')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    return result;
  }

  @override
  SupplementsStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SupplementsStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'selectedSupplements':
          result.selectedSupplements.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'customSupplements':
          result.customSupplements.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SupplementTypeStruct)]))!
              as BuiltList<Object?>);
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

class _$SupplementsStruct extends SupplementsStruct {
  @override
  final BuiltList<DocumentReference<Object?>>? selectedSupplements;
  @override
  final BuiltList<SupplementTypeStruct> customSupplements;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$SupplementsStruct(
          [void Function(SupplementsStructBuilder)? updates]) =>
      (new SupplementsStructBuilder()..update(updates))._build();

  _$SupplementsStruct._(
      {this.selectedSupplements,
      required this.customSupplements,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        customSupplements, r'SupplementsStruct', 'customSupplements');
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'SupplementsStruct', 'firestoreUtilData');
  }

  @override
  SupplementsStruct rebuild(void Function(SupplementsStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SupplementsStructBuilder toBuilder() =>
      new SupplementsStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SupplementsStruct &&
        selectedSupplements == other.selectedSupplements &&
        customSupplements == other.customSupplements &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, selectedSupplements.hashCode), customSupplements.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SupplementsStruct')
          ..add('selectedSupplements', selectedSupplements)
          ..add('customSupplements', customSupplements)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class SupplementsStructBuilder
    implements Builder<SupplementsStruct, SupplementsStructBuilder> {
  _$SupplementsStruct? _$v;

  ListBuilder<DocumentReference<Object?>>? _selectedSupplements;
  ListBuilder<DocumentReference<Object?>> get selectedSupplements =>
      _$this._selectedSupplements ??=
          new ListBuilder<DocumentReference<Object?>>();
  set selectedSupplements(
          ListBuilder<DocumentReference<Object?>>? selectedSupplements) =>
      _$this._selectedSupplements = selectedSupplements;

  ListBuilder<SupplementTypeStruct>? _customSupplements;
  ListBuilder<SupplementTypeStruct> get customSupplements =>
      _$this._customSupplements ??= new ListBuilder<SupplementTypeStruct>();
  set customSupplements(ListBuilder<SupplementTypeStruct>? customSupplements) =>
      _$this._customSupplements = customSupplements;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  SupplementsStructBuilder() {
    SupplementsStruct._initializeBuilder(this);
  }

  SupplementsStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _selectedSupplements = $v.selectedSupplements?.toBuilder();
      _customSupplements = $v.customSupplements.toBuilder();
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SupplementsStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SupplementsStruct;
  }

  @override
  void update(void Function(SupplementsStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SupplementsStruct build() => _build();

  _$SupplementsStruct _build() {
    _$SupplementsStruct _$result;
    try {
      _$result = _$v ??
          new _$SupplementsStruct._(
              selectedSupplements: _selectedSupplements?.build(),
              customSupplements: customSupplements.build(),
              firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                  firestoreUtilData,
                  r'SupplementsStruct',
                  'firestoreUtilData'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'selectedSupplements';
        _selectedSupplements?.build();
        _$failedField = 'customSupplements';
        customSupplements.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SupplementsStruct', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
