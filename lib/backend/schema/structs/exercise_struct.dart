import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'exercise_struct.g.dart';

abstract class ExerciseStruct
    implements Built<ExerciseStruct, ExerciseStructBuilder> {
  static Serializer<ExerciseStruct> get serializer =>
      _$exerciseStructSerializer;

  String? get name;

  bool? get isDoubleWeight;

  bool? get isBodyWeight;

  String? get icon;

  String? get muscleGroup;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(ExerciseStructBuilder builder) => builder
    ..name = ''
    ..isDoubleWeight = false
    ..isBodyWeight = false
    ..icon = ''
    ..muscleGroup = ''
    ..firestoreUtilData = FirestoreUtilData();

  ExerciseStruct._();
  factory ExerciseStruct([void Function(ExerciseStructBuilder) updates]) =
      _$ExerciseStruct;
}

ExerciseStruct createExerciseStruct({
  String? name,
  bool? isDoubleWeight,
  bool? isBodyWeight,
  String? icon,
  String? muscleGroup,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ExerciseStruct(
      (e) => e
        ..name = name
        ..isDoubleWeight = isDoubleWeight
        ..isBodyWeight = isBodyWeight
        ..icon = icon
        ..muscleGroup = muscleGroup
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

ExerciseStruct? updateExerciseStruct(
  ExerciseStruct? exercise, {
  bool clearUnsetFields = true,
}) =>
    exercise != null
        ? (exercise.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addExerciseStructData(
  Map<String, dynamic> firestoreData,
  ExerciseStruct? exercise,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (exercise == null) {
    return;
  }
  if (exercise.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && exercise.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final exerciseData = getExerciseFirestoreData(exercise, forFieldValue);
  final nestedData = exerciseData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = exercise.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getExerciseFirestoreData(
  ExerciseStruct? exercise, [
  bool forFieldValue = false,
]) {
  if (exercise == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(ExerciseStruct.serializer, exercise);

  // Add any Firestore field values
  exercise.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getExerciseListFirestoreData(
  List<ExerciseStruct>? exercises,
) =>
    exercises?.map((e) => getExerciseFirestoreData(e, true)).toList() ?? [];
