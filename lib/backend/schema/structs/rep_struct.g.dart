// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rep_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RepStruct> _$repStructSerializer = new _$RepStructSerializer();

class _$RepStructSerializer implements StructuredSerializer<RepStruct> {
  @override
  final Iterable<Type> types = const [RepStruct, _$RepStruct];
  @override
  final String wireName = 'RepStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, RepStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.weight;
    if (value != null) {
      result
        ..add('weight')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.count;
    if (value != null) {
      result
        ..add('count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.note;
    if (value != null) {
      result
        ..add('note')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  RepStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RepStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'weight':
          result.weight = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'note':
          result.note = serializers.deserialize(value,
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

class _$RepStruct extends RepStruct {
  @override
  final int? weight;
  @override
  final int? count;
  @override
  final String? note;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$RepStruct([void Function(RepStructBuilder)? updates]) =>
      (new RepStructBuilder()..update(updates))._build();

  _$RepStruct._(
      {this.weight, this.count, this.note, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'RepStruct', 'firestoreUtilData');
  }

  @override
  RepStruct rebuild(void Function(RepStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RepStructBuilder toBuilder() => new RepStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RepStruct &&
        weight == other.weight &&
        count == other.count &&
        note == other.note &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, weight.hashCode), count.hashCode), note.hashCode),
        firestoreUtilData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RepStruct')
          ..add('weight', weight)
          ..add('count', count)
          ..add('note', note)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class RepStructBuilder implements Builder<RepStruct, RepStructBuilder> {
  _$RepStruct? _$v;

  int? _weight;
  int? get weight => _$this._weight;
  set weight(int? weight) => _$this._weight = weight;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  RepStructBuilder() {
    RepStruct._initializeBuilder(this);
  }

  RepStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _weight = $v.weight;
      _count = $v.count;
      _note = $v.note;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RepStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RepStruct;
  }

  @override
  void update(void Function(RepStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RepStruct build() => _build();

  _$RepStruct _build() {
    final _$result = _$v ??
        new _$RepStruct._(
            weight: weight,
            count: count,
            note: note,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'RepStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
