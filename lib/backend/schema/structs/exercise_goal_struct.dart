import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'exercise_goal_struct.g.dart';

abstract class ExerciseGoalStruct
    implements Built<ExerciseGoalStruct, ExerciseGoalStructBuilder> {
  static Serializer<ExerciseGoalStruct> get serializer =>
      _$exerciseGoalStructSerializer;

  DateTime? get createdAt;

  ExerciseGoalTargetStruct get target;

  DateTime? get completedAt;

  DocumentReference? get exerciseType;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(ExerciseGoalStructBuilder builder) => builder
    ..target = ExerciseGoalTargetStructBuilder()
    ..firestoreUtilData = FirestoreUtilData();

  ExerciseGoalStruct._();
  factory ExerciseGoalStruct(
          [void Function(ExerciseGoalStructBuilder) updates]) =
      _$ExerciseGoalStruct;
}

ExerciseGoalStruct createExerciseGoalStruct({
  DateTime? createdAt,
  ExerciseGoalTargetStruct? target,
  DateTime? completedAt,
  DocumentReference? exerciseType,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ExerciseGoalStruct(
      (e) => e
        ..createdAt = createdAt
        ..target = target?.toBuilder() ?? ExerciseGoalTargetStructBuilder()
        ..completedAt = completedAt
        ..exerciseType = exerciseType
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

ExerciseGoalStruct? updateExerciseGoalStruct(
  ExerciseGoalStruct? exerciseGoal, {
  bool clearUnsetFields = true,
}) =>
    exerciseGoal != null
        ? (exerciseGoal.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addExerciseGoalStructData(
  Map<String, dynamic> firestoreData,
  ExerciseGoalStruct? exerciseGoal,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (exerciseGoal == null) {
    return;
  }
  if (exerciseGoal.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && exerciseGoal.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final exerciseGoalData =
      getExerciseGoalFirestoreData(exerciseGoal, forFieldValue);
  final nestedData =
      exerciseGoalData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = exerciseGoal.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getExerciseGoalFirestoreData(
  ExerciseGoalStruct? exerciseGoal, [
  bool forFieldValue = false,
]) {
  if (exerciseGoal == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(ExerciseGoalStruct.serializer, exerciseGoal);

  // Handle nested data for "target" field.
  addExerciseGoalTargetStructData(
      firestoreData, exerciseGoal.target, 'target', forFieldValue);

  // Add any Firestore field values
  exerciseGoal.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getExerciseGoalListFirestoreData(
  List<ExerciseGoalStruct>? exerciseGoals,
) =>
    exerciseGoals?.map((e) => getExerciseGoalFirestoreData(e, true)).toList() ??
    [];
