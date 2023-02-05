// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplement_intakes_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SupplementIntakesRecord> _$supplementIntakesRecordSerializer =
    new _$SupplementIntakesRecordSerializer();

class _$SupplementIntakesRecordSerializer
    implements StructuredSerializer<SupplementIntakesRecord> {
  @override
  final Iterable<Type> types = const [
    SupplementIntakesRecord,
    _$SupplementIntakesRecord
  ];
  @override
  final String wireName = 'SupplementIntakesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SupplementIntakesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(SupplementIntakeStruct)),
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
  SupplementIntakesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SupplementIntakesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(SupplementIntakeStruct))!
              as SupplementIntakeStruct);
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

class _$SupplementIntakesRecord extends SupplementIntakesRecord {
  @override
  final SupplementIntakeStruct data;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SupplementIntakesRecord(
          [void Function(SupplementIntakesRecordBuilder)? updates]) =>
      (new SupplementIntakesRecordBuilder()..update(updates))._build();

  _$SupplementIntakesRecord._({required this.data, this.ffRef}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        data, r'SupplementIntakesRecord', 'data');
  }

  @override
  SupplementIntakesRecord rebuild(
          void Function(SupplementIntakesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SupplementIntakesRecordBuilder toBuilder() =>
      new SupplementIntakesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SupplementIntakesRecord &&
        data == other.data &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, data.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SupplementIntakesRecord')
          ..add('data', data)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SupplementIntakesRecordBuilder
    implements
        Builder<SupplementIntakesRecord, SupplementIntakesRecordBuilder> {
  _$SupplementIntakesRecord? _$v;

  SupplementIntakeStructBuilder? _data;
  SupplementIntakeStructBuilder get data =>
      _$this._data ??= new SupplementIntakeStructBuilder();
  set data(SupplementIntakeStructBuilder? data) => _$this._data = data;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SupplementIntakesRecordBuilder() {
    SupplementIntakesRecord._initializeBuilder(this);
  }

  SupplementIntakesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SupplementIntakesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SupplementIntakesRecord;
  }

  @override
  void update(void Function(SupplementIntakesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SupplementIntakesRecord build() => _build();

  _$SupplementIntakesRecord _build() {
    _$SupplementIntakesRecord _$result;
    try {
      _$result = _$v ??
          new _$SupplementIntakesRecord._(data: data.build(), ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SupplementIntakesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
