import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  String? get adId;

  String? get name;

  String? get userName;

  int? get gender;

  DateTime? get dateOfBirth;

  int? get height;

  double? get weight;

  String? get country;

  String? get city;

  String? get bodyType;

  String? get experience;

  bool? get isMetricUnit;

  bool? get isPremium;

  DateTime? get registeredAt;

  BuiltList<SupplementIntakeStruct>? get supplementIntakes;

  SupplementsStruct get supplements;

  GoalsStruct get goals;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..adId = ''
    ..name = ''
    ..userName = ''
    ..gender = 0
    ..height = 0
    ..weight = 0.0
    ..country = ''
    ..city = ''
    ..bodyType = ''
    ..experience = ''
    ..isMetricUnit = false
    ..isPremium = false
    ..supplementIntakes = ListBuilder()
    ..supplements = SupplementsStructBuilder()
    ..goals = GoalsStructBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? adId,
  String? name,
  String? userName,
  int? gender,
  DateTime? dateOfBirth,
  int? height,
  double? weight,
  String? country,
  String? city,
  String? bodyType,
  String? experience,
  bool? isMetricUnit,
  bool? isPremium,
  DateTime? registeredAt,
  SupplementsStruct? supplements,
  GoalsStruct? goals,
}) {
  final firestoreData = serializers.toFirestore(
    UsersRecord.serializer,
    UsersRecord(
      (u) => u
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..adId = adId
        ..name = name
        ..userName = userName
        ..gender = gender
        ..dateOfBirth = dateOfBirth
        ..height = height
        ..weight = weight
        ..country = country
        ..city = city
        ..bodyType = bodyType
        ..experience = experience
        ..isMetricUnit = isMetricUnit
        ..isPremium = isPremium
        ..registeredAt = registeredAt
        ..supplementIntakes = null
        ..supplements = SupplementsStructBuilder()
        ..goals = GoalsStructBuilder(),
    ),
  );

  // Handle nested data for "supplements" field.
  addSupplementsStructData(firestoreData, supplements, 'supplements');

  // Handle nested data for "goals" field.
  addGoalsStructData(firestoreData, goals, 'goals');

  return firestoreData;
}
