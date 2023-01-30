import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'workout_struct.g.dart';

abstract class WorkoutStruct
    implements Built<WorkoutStruct, WorkoutStructBuilder> {
  static Serializer<WorkoutStruct> get serializer => _$workoutStructSerializer;

  DateTime? get date;

  int? get duration;

  BuiltList<RepetitionStruct> get repetitions;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(WorkoutStructBuilder builder) => builder
    ..duration = 0
    ..repetitions = ListBuilder()
    ..firestoreUtilData = FirestoreUtilData();

  WorkoutStruct._();
  factory WorkoutStruct([void Function(WorkoutStructBuilder) updates]) =
      _$WorkoutStruct;
}

WorkoutStruct createWorkoutStruct({
  DateTime? date,
  int? duration,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    WorkoutStruct(
      (w) => w
        ..date = date
        ..duration = duration
        ..repetitions = null
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

WorkoutStruct? updateWorkoutStruct(
  WorkoutStruct? workout, {
  bool clearUnsetFields = true,
}) =>
    workout != null
        ? (workout.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addWorkoutStructData(
  Map<String, dynamic> firestoreData,
  WorkoutStruct? workout,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (workout == null) {
    return;
  }
  if (workout.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && workout.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final workoutData = getWorkoutFirestoreData(workout, forFieldValue);
  final nestedData = workoutData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = workout.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getWorkoutFirestoreData(
  WorkoutStruct? workout, [
  bool forFieldValue = false,
]) {
  if (workout == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(WorkoutStruct.serializer, workout);

  // Add any Firestore field values
  workout.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getWorkoutListFirestoreData(
  List<WorkoutStruct>? workouts,
) =>
    workouts?.map((w) => getWorkoutFirestoreData(w, true)).toList() ?? [];
