// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'goals',
      serializers.serialize(object.goals,
          specifiedType: const FullType(GoalsStruct)),
    ];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.adId;
    if (value != null) {
      result
        ..add('adId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userName;
    if (value != null) {
      result
        ..add('userName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.dateOfBirth;
    if (value != null) {
      result
        ..add('dateOfBirth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.height;
    if (value != null) {
      result
        ..add('height')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.weight;
    if (value != null) {
      result
        ..add('weight')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.country;
    if (value != null) {
      result
        ..add('country')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bodyType;
    if (value != null) {
      result
        ..add('bodyType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.experience;
    if (value != null) {
      result
        ..add('experience')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isMetricUnit;
    if (value != null) {
      result
        ..add('isMetricUnit')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isPremium;
    if (value != null) {
      result
        ..add('isPremium')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.registeredAt;
    if (value != null) {
      result
        ..add('registeredAt')
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
  UsersRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'adId':
          result.adId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userName':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'dateOfBirth':
          result.dateOfBirth = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'weight':
          result.weight = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bodyType':
          result.bodyType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'experience':
          result.experience = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isMetricUnit':
          result.isMetricUnit = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isPremium':
          result.isPremium = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'registeredAt':
          result.registeredAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'goals':
          result.goals.replace(serializers.deserialize(value,
              specifiedType: const FullType(GoalsStruct))! as GoalsStruct);
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

class _$UsersRecord extends UsersRecord {
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final String? adId;
  @override
  final String? name;
  @override
  final String? userName;
  @override
  final int? gender;
  @override
  final DateTime? dateOfBirth;
  @override
  final int? height;
  @override
  final double? weight;
  @override
  final String? country;
  @override
  final String? city;
  @override
  final String? bodyType;
  @override
  final String? experience;
  @override
  final bool? isMetricUnit;
  @override
  final bool? isPremium;
  @override
  final DateTime? registeredAt;
  @override
  final GoalsStruct goals;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsersRecord([void Function(UsersRecordBuilder)? updates]) =>
      (new UsersRecordBuilder()..update(updates))._build();

  _$UsersRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.adId,
      this.name,
      this.userName,
      this.gender,
      this.dateOfBirth,
      this.height,
      this.weight,
      this.country,
      this.city,
      this.bodyType,
      this.experience,
      this.isMetricUnit,
      this.isPremium,
      this.registeredAt,
      required this.goals,
      this.ffRef})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(goals, r'UsersRecord', 'goals');
  }

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        adId == other.adId &&
        name == other.name &&
        userName == other.userName &&
        gender == other.gender &&
        dateOfBirth == other.dateOfBirth &&
        height == other.height &&
        weight == other.weight &&
        country == other.country &&
        city == other.city &&
        bodyType == other.bodyType &&
        experience == other.experience &&
        isMetricUnit == other.isMetricUnit &&
        isPremium == other.isPremium &&
        registeredAt == other.registeredAt &&
        goals == other.goals &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc(0, email.hashCode), displayName.hashCode), photoUrl.hashCode),
                                                                                uid.hashCode),
                                                                            createdTime.hashCode),
                                                                        phoneNumber.hashCode),
                                                                    adId.hashCode),
                                                                name.hashCode),
                                                            userName.hashCode),
                                                        gender.hashCode),
                                                    dateOfBirth.hashCode),
                                                height.hashCode),
                                            weight.hashCode),
                                        country.hashCode),
                                    city.hashCode),
                                bodyType.hashCode),
                            experience.hashCode),
                        isMetricUnit.hashCode),
                    isPremium.hashCode),
                registeredAt.hashCode),
            goals.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('adId', adId)
          ..add('name', name)
          ..add('userName', userName)
          ..add('gender', gender)
          ..add('dateOfBirth', dateOfBirth)
          ..add('height', height)
          ..add('weight', weight)
          ..add('country', country)
          ..add('city', city)
          ..add('bodyType', bodyType)
          ..add('experience', experience)
          ..add('isMetricUnit', isMetricUnit)
          ..add('isPremium', isPremium)
          ..add('registeredAt', registeredAt)
          ..add('goals', goals)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _adId;
  String? get adId => _$this._adId;
  set adId(String? adId) => _$this._adId = adId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  int? _gender;
  int? get gender => _$this._gender;
  set gender(int? gender) => _$this._gender = gender;

  DateTime? _dateOfBirth;
  DateTime? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(DateTime? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  int? _height;
  int? get height => _$this._height;
  set height(int? height) => _$this._height = height;

  double? _weight;
  double? get weight => _$this._weight;
  set weight(double? weight) => _$this._weight = weight;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _bodyType;
  String? get bodyType => _$this._bodyType;
  set bodyType(String? bodyType) => _$this._bodyType = bodyType;

  String? _experience;
  String? get experience => _$this._experience;
  set experience(String? experience) => _$this._experience = experience;

  bool? _isMetricUnit;
  bool? get isMetricUnit => _$this._isMetricUnit;
  set isMetricUnit(bool? isMetricUnit) => _$this._isMetricUnit = isMetricUnit;

  bool? _isPremium;
  bool? get isPremium => _$this._isPremium;
  set isPremium(bool? isPremium) => _$this._isPremium = isPremium;

  DateTime? _registeredAt;
  DateTime? get registeredAt => _$this._registeredAt;
  set registeredAt(DateTime? registeredAt) =>
      _$this._registeredAt = registeredAt;

  GoalsStructBuilder? _goals;
  GoalsStructBuilder get goals => _$this._goals ??= new GoalsStructBuilder();
  set goals(GoalsStructBuilder? goals) => _$this._goals = goals;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _adId = $v.adId;
      _name = $v.name;
      _userName = $v.userName;
      _gender = $v.gender;
      _dateOfBirth = $v.dateOfBirth;
      _height = $v.height;
      _weight = $v.weight;
      _country = $v.country;
      _city = $v.city;
      _bodyType = $v.bodyType;
      _experience = $v.experience;
      _isMetricUnit = $v.isMetricUnit;
      _isPremium = $v.isPremium;
      _registeredAt = $v.registeredAt;
      _goals = $v.goals.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersRecord build() => _build();

  _$UsersRecord _build() {
    _$UsersRecord _$result;
    try {
      _$result = _$v ??
          new _$UsersRecord._(
              email: email,
              displayName: displayName,
              photoUrl: photoUrl,
              uid: uid,
              createdTime: createdTime,
              phoneNumber: phoneNumber,
              adId: adId,
              name: name,
              userName: userName,
              gender: gender,
              dateOfBirth: dateOfBirth,
              height: height,
              weight: weight,
              country: country,
              city: city,
              bodyType: bodyType,
              experience: experience,
              isMetricUnit: isMetricUnit,
              isPremium: isPremium,
              registeredAt: registeredAt,
              goals: goals.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'goals';
        goals.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UsersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
