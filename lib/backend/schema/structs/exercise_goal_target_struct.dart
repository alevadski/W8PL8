import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'exercise_goal_target_struct.g.dart';

abstract class ExerciseGoalTargetStruct
    implements
        Built<ExerciseGoalTargetStruct, ExerciseGoalTargetStructBuilder> {
  static Serializer<ExerciseGoalTargetStruct> get serializer =>
      _$exerciseGoalTargetStructSerializer;

  double? get weight;

  bool? get both;

  double? get repetitions;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(ExerciseGoalTargetStructBuilder builder) =>
      builder
        ..weight = 0.0
        ..both = false
        ..repetitions = 0.0
        ..firestoreUtilData = FirestoreUtilData();

  ExerciseGoalTargetStruct._();
  factory ExerciseGoalTargetStruct(
          [void Function(ExerciseGoalTargetStructBuilder) updates]) =
      _$ExerciseGoalTargetStruct;
}

ExerciseGoalTargetStruct createExerciseGoalTargetStruct({
  double? weight,
  bool? both,
  double? repetitions,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ExerciseGoalTargetStruct(
      (e) => e
        ..weight = weight
        ..both = both
        ..repetitions = repetitions
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

ExerciseGoalTargetStruct? updateExerciseGoalTargetStruct(
  ExerciseGoalTargetStruct? exerciseGoalTarget, {
  bool clearUnsetFields = true,
}) =>
    exerciseGoalTarget != null
        ? (exerciseGoalTarget.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addExerciseGoalTargetStructData(
  Map<String, dynamic> firestoreData,
  ExerciseGoalTargetStruct? exerciseGoalTarget,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (exerciseGoalTarget == null) {
    return;
  }
  if (exerciseGoalTarget.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && exerciseGoalTarget.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final exerciseGoalTargetData =
      getExerciseGoalTargetFirestoreData(exerciseGoalTarget, forFieldValue);
  final nestedData =
      exerciseGoalTargetData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = exerciseGoalTarget.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getExerciseGoalTargetFirestoreData(
  ExerciseGoalTargetStruct? exerciseGoalTarget, [
  bool forFieldValue = false,
]) {
  if (exerciseGoalTarget == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(
      ExerciseGoalTargetStruct.serializer, exerciseGoalTarget);

  // Add any Firestore field values
  exerciseGoalTarget.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getExerciseGoalTargetListFirestoreData(
  List<ExerciseGoalTargetStruct>? exerciseGoalTargets,
) =>
    exerciseGoalTargets
        ?.map((e) => getExerciseGoalTargetFirestoreData(e, true))
        .toList() ??
    [];
