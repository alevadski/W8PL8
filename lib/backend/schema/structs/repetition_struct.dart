import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'repetition_struct.g.dart';

abstract class RepetitionStruct
    implements Built<RepetitionStruct, RepetitionStructBuilder> {
  static Serializer<RepetitionStruct> get serializer =>
      _$repetitionStructSerializer;

  double? get weight;

  double? get times;

  ExerciseStruct get exercise;

  MuscleGroupStruct get muscleGroup;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(RepetitionStructBuilder builder) => builder
    ..weight = 0.0
    ..times = 0.0
    ..exercise = ExerciseStructBuilder()
    ..muscleGroup = MuscleGroupStructBuilder()
    ..firestoreUtilData = FirestoreUtilData();

  RepetitionStruct._();
  factory RepetitionStruct([void Function(RepetitionStructBuilder) updates]) =
      _$RepetitionStruct;
}

RepetitionStruct createRepetitionStruct({
  double? weight,
  double? times,
  ExerciseStruct? exercise,
  MuscleGroupStruct? muscleGroup,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RepetitionStruct(
      (r) => r
        ..weight = weight
        ..times = times
        ..exercise = exercise?.toBuilder() ?? ExerciseStructBuilder()
        ..muscleGroup = muscleGroup?.toBuilder() ?? MuscleGroupStructBuilder()
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

RepetitionStruct? updateRepetitionStruct(
  RepetitionStruct? repetition, {
  bool clearUnsetFields = true,
}) =>
    repetition != null
        ? (repetition.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addRepetitionStructData(
  Map<String, dynamic> firestoreData,
  RepetitionStruct? repetition,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (repetition == null) {
    return;
  }
  if (repetition.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && repetition.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final repetitionData = getRepetitionFirestoreData(repetition, forFieldValue);
  final nestedData = repetitionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = repetition.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getRepetitionFirestoreData(
  RepetitionStruct? repetition, [
  bool forFieldValue = false,
]) {
  if (repetition == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(RepetitionStruct.serializer, repetition);

  // Handle nested data for "exercise" field.
  addExerciseStructData(
      firestoreData, repetition.exercise, 'exercise', forFieldValue);

  // Handle nested data for "muscleGroup" field.
  addMuscleGroupStructData(
      firestoreData, repetition.muscleGroup, 'muscleGroup', forFieldValue);

  // Add any Firestore field values
  repetition.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRepetitionListFirestoreData(
  List<RepetitionStruct>? repetitions,
) =>
    repetitions?.map((r) => getRepetitionFirestoreData(r, true)).toList() ?? [];
