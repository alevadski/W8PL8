import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'goals_struct.g.dart';

abstract class GoalsStruct implements Built<GoalsStruct, GoalsStructBuilder> {
  static Serializer<GoalsStruct> get serializer => _$goalsStructSerializer;

  BuiltList<StreakGoalStruct> get streakGoals;

  BuiltList<ExerciseGoalStruct> get exerciseGoals;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(GoalsStructBuilder builder) => builder
    ..streakGoals = ListBuilder()
    ..exerciseGoals = ListBuilder()
    ..firestoreUtilData = FirestoreUtilData();

  GoalsStruct._();
  factory GoalsStruct([void Function(GoalsStructBuilder) updates]) =
      _$GoalsStruct;
}

GoalsStruct createGoalsStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    GoalsStruct(
      (g) => g
        ..streakGoals = null
        ..exerciseGoals = null
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

GoalsStruct? updateGoalsStruct(
  GoalsStruct? goals, {
  bool clearUnsetFields = true,
}) =>
    goals != null
        ? (goals.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addGoalsStructData(
  Map<String, dynamic> firestoreData,
  GoalsStruct? goals,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (goals == null) {
    return;
  }
  if (goals.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && goals.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final goalsData = getGoalsFirestoreData(goals, forFieldValue);
  final nestedData = goalsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = goals.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getGoalsFirestoreData(
  GoalsStruct? goals, [
  bool forFieldValue = false,
]) {
  if (goals == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(GoalsStruct.serializer, goals);

  // Add any Firestore field values
  goals.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getGoalsListFirestoreData(
  List<GoalsStruct>? goalss,
) =>
    goalss?.map((g) => getGoalsFirestoreData(g, true)).toList() ?? [];
