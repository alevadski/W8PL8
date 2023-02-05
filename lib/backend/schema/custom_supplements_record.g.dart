// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_supplements_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CustomSupplementsRecord> _$customSupplementsRecordSerializer =
    new _$CustomSupplementsRecordSerializer();

class _$CustomSupplementsRecordSerializer
    implements StructuredSerializer<CustomSupplementsRecord> {
  @override
  final Iterable<Type> types = const [
    CustomSupplementsRecord,
    _$CustomSupplementsRecord
  ];
  @override
  final String wireName = 'CustomSupplementsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CustomSupplementsRecord object,
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
  CustomSupplementsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CustomSupplementsRecordBuilder();

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

class _$CustomSupplementsRecord extends CustomSupplementsRecord {
  @override
  final SupplementTypeStruct data;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CustomSupplementsRecord(
          [void Function(CustomSupplementsRecordBuilder)? updates]) =>
      (new CustomSupplementsRecordBuilder()..update(updates))._build();

  _$CustomSupplementsRecord._({required this.data, this.ffRef}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        data, r'CustomSupplementsRecord', 'data');
  }

  @override
  CustomSupplementsRecord rebuild(
          void Function(CustomSupplementsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomSupplementsRecordBuilder toBuilder() =>
      new CustomSupplementsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomSupplementsRecord &&
        data == other.data &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, data.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomSupplementsRecord')
          ..add('data', data)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CustomSupplementsRecordBuilder
    implements
        Builder<CustomSupplementsRecord, CustomSupplementsRecordBuilder> {
  _$CustomSupplementsRecord? _$v;

  SupplementTypeStructBuilder? _data;
  SupplementTypeStructBuilder get data =>
      _$this._data ??= new SupplementTypeStructBuilder();
  set data(SupplementTypeStructBuilder? data) => _$this._data = data;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CustomSupplementsRecordBuilder() {
    CustomSupplementsRecord._initializeBuilder(this);
  }

  CustomSupplementsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomSupplementsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CustomSupplementsRecord;
  }

  @override
  void update(void Function(CustomSupplementsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomSupplementsRecord build() => _build();

  _$CustomSupplementsRecord _build() {
    _$CustomSupplementsRecord _$result;
    try {
      _$result = _$v ??
          new _$CustomSupplementsRecord._(data: data.build(), ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CustomSupplementsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
