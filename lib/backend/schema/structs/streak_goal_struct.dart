import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'streak_goal_struct.g.dart';

abstract class StreakGoalStruct
    implements Built<StreakGoalStruct, StreakGoalStructBuilder> {
  static Serializer<StreakGoalStruct> get serializer =>
      _$streakGoalStructSerializer;

  String? get name;

  int? get times;

  int? get days;

  DateTime? get createdAt;

  DateTime? get completedAt;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(StreakGoalStructBuilder builder) => builder
    ..name = ''
    ..times = 0
    ..days = 0
    ..firestoreUtilData = FirestoreUtilData();

  StreakGoalStruct._();
  factory StreakGoalStruct([void Function(StreakGoalStructBuilder) updates]) =
      _$StreakGoalStruct;
}

StreakGoalStruct createStreakGoalStruct({
  String? name,
  int? times,
  int? days,
  DateTime? createdAt,
  DateTime? completedAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    StreakGoalStruct(
      (s) => s
        ..name = name
        ..times = times
        ..days = days
        ..createdAt = createdAt
        ..completedAt = completedAt
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

StreakGoalStruct? updateStreakGoalStruct(
  StreakGoalStruct? streakGoal, {
  bool clearUnsetFields = true,
}) =>
    streakGoal != null
        ? (streakGoal.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addStreakGoalStructData(
  Map<String, dynamic> firestoreData,
  StreakGoalStruct? streakGoal,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (streakGoal == null) {
    return;
  }
  if (streakGoal.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && streakGoal.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final streakGoalData = getStreakGoalFirestoreData(streakGoal, forFieldValue);
  final nestedData = streakGoalData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = streakGoal.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getStreakGoalFirestoreData(
  StreakGoalStruct? streakGoal, [
  bool forFieldValue = false,
]) {
  if (streakGoal == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(StreakGoalStruct.serializer, streakGoal);

  // Add any Firestore field values
  streakGoal.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getStreakGoalListFirestoreData(
  List<StreakGoalStruct>? streakGoals,
) =>
    streakGoals?.map((s) => getStreakGoalFirestoreData(s, true)).toList() ?? [];
