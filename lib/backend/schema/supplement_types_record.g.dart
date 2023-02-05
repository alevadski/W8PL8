// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplement_types_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SupplementTypesRecord> _$supplementTypesRecordSerializer =
    new _$SupplementTypesRecordSerializer();

class _$SupplementTypesRecordSerializer
    implements StructuredSerializer<SupplementTypesRecord> {
  @override
  final Iterable<Type> types = const [
    SupplementTypesRecord,
    _$SupplementTypesRecord
  ];
  @override
  final String wireName = 'SupplementTypesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SupplementTypesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(SupplementTypeStruct)),
    ];
    Object? value;
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
  SupplementTypesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SupplementTypesRecordBuilder();

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

class _$SupplementTypesRecord extends SupplementTypesRecord {
  @override
  final SupplementTypeStruct data;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SupplementTypesRecord(
          [void Function(SupplementTypesRecordBuilder)? updates]) =>
      (new SupplementTypesRecordBuilder()..update(updates))._build();

  _$SupplementTypesRecord._({required this.data, this.ffRef}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        data, r'SupplementTypesRecord', 'data');
  }

  @override
  SupplementTypesRecord rebuild(
          void Function(SupplementTypesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SupplementTypesRecordBuilder toBuilder() =>
      new SupplementTypesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SupplementTypesRecord &&
        data == other.data &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, data.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SupplementTypesRecord')
          ..add('data', data)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SupplementTypesRecordBuilder
    implements Builder<SupplementTypesRecord, SupplementTypesRecordBuilder> {
  _$SupplementTypesRecord? _$v;

  SupplementTypeStructBuilder? _data;
  SupplementTypeStructBuilder get data =>
      _$this._data ??= new SupplementTypeStructBuilder();
  set data(SupplementTypeStructBuilder? data) => _$this._data = data;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SupplementTypesRecordBuilder() {
    SupplementTypesRecord._initializeBuilder(this);
  }

  SupplementTypesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SupplementTypesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SupplementTypesRecord;
  }

  @override
  void update(void Function(SupplementTypesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SupplementTypesRecord build() => _build();

  _$SupplementTypesRecord _build() {
    _$SupplementTypesRecord _$result;
    try {
      _$result = _$v ??
          new _$SupplementTypesRecord._(data: data.build(), ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SupplementTypesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
