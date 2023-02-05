// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selected_supplements_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SelectedSupplementsRecord> _$selectedSupplementsRecordSerializer =
    new _$SelectedSupplementsRecordSerializer();

class _$SelectedSupplementsRecordSerializer
    implements StructuredSerializer<SelectedSupplementsRecord> {
  @override
  final Iterable<Type> types = const [
    SelectedSupplementsRecord,
    _$SelectedSupplementsRecord
  ];
  @override
  final String wireName = 'SelectedSupplementsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SelectedSupplementsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(SupplementTypeStruct)),
    ];
    Object? value;
    value = object.isCustom;
    if (value != null) {
      result
        ..add('isCustom')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.addedAt;
    if (value != null) {
      result
        ..add('addedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  SelectedSupplementsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SelectedSupplementsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(SupplementTypeStruct))!
              as SupplementTypeStruct);
          break;
        case 'isCustom':
          result.isCustom = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'addedAt':
          result.addedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$SelectedSupplementsRecord extends SelectedSupplementsRecord {
  @override
  final SupplementTypeStruct data;
  @override
  final bool? isCustom;
  @override
  final DateTime? addedAt;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SelectedSupplementsRecord(
          [void Function(SelectedSupplementsRecordBuilder)? updates]) =>
      (new SelectedSupplementsRecordBuilder()..update(updates))._build();

  _$SelectedSupplementsRecord._(
      {required this.data, this.isCustom, this.addedAt, this.ffRef})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        data, r'SelectedSupplementsRecord', 'data');
  }

  @override
  SelectedSupplementsRecord rebuild(
          void Function(SelectedSupplementsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SelectedSupplementsRecordBuilder toBuilder() =>
      new SelectedSupplementsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelectedSupplementsRecord &&
        data == other.data &&
        isCustom == other.isCustom &&
        addedAt == other.addedAt &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, data.hashCode), isCustom.hashCode), addedAt.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SelectedSupplementsRecord')
          ..add('data', data)
          ..add('isCustom', isCustom)
          ..add('addedAt', addedAt)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SelectedSupplementsRecordBuilder
    implements
        Builder<SelectedSupplementsRecord, SelectedSupplementsRecordBuilder> {
  _$SelectedSupplementsRecord? _$v;

  SupplementTypeStructBuilder? _data;
  SupplementTypeStructBuilder get data =>
      _$this._data ??= new SupplementTypeStructBuilder();
  set data(SupplementTypeStructBuilder? data) => _$this._data = data;

  bool? _isCustom;
  bool? get isCustom => _$this._isCustom;
  set isCustom(bool? isCustom) => _$this._isCustom = isCustom;

  DateTime? _addedAt;
  DateTime? get addedAt => _$this._addedAt;
  set addedAt(DateTime? addedAt) => _$this._addedAt = addedAt;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SelectedSupplementsRecordBuilder() {
    SelectedSupplementsRecord._initializeBuilder(this);
  }

  SelectedSupplementsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _isCustom = $v.isCustom;
      _addedAt = $v.addedAt;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectedSupplementsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SelectedSupplementsRecord;
  }

  @override
  void update(void Function(SelectedSupplementsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SelectedSupplementsRecord build() => _build();

  _$SelectedSupplementsRecord _build() {
    _$SelectedSupplementsRecord _$result;
    try {
      _$result = _$v ??
          new _$SelectedSupplementsRecord._(
              data: data.build(),
              isCustom: isCustom,
              addedAt: addedAt,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SelectedSupplementsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
