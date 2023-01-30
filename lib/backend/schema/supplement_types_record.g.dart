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
    final result = <Object?>[];
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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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
  final String? name;
  @override
  final String? color;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SupplementTypesRecord(
          [void Function(SupplementTypesRecordBuilder)? updates]) =>
      (new SupplementTypesRecordBuilder()..update(updates))._build();

  _$SupplementTypesRecord._({this.name, this.color, this.ffRef}) : super._();

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
        name == other.name &&
        color == other.color &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, name.hashCode), color.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SupplementTypesRecord')
          ..add('name', name)
          ..add('color', color)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SupplementTypesRecordBuilder
    implements Builder<SupplementTypesRecord, SupplementTypesRecordBuilder> {
  _$SupplementTypesRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SupplementTypesRecordBuilder() {
    SupplementTypesRecord._initializeBuilder(this);
  }

  SupplementTypesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _color = $v.color;
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
    final _$result = _$v ??
        new _$SupplementTypesRecord._(name: name, color: color, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
