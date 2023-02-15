import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'muscle_group_struct.g.dart';

abstract class MuscleGroupStruct
    implements Built<MuscleGroupStruct, MuscleGroupStructBuilder> {
  static Serializer<MuscleGroupStruct> get serializer =>
      _$muscleGroupStructSerializer;

  String? get name;

  String? get image;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(MuscleGroupStructBuilder builder) => builder
    ..name = ''
    ..image = ''
    ..firestoreUtilData = FirestoreUtilData();

  MuscleGroupStruct._();
  factory MuscleGroupStruct([void Function(MuscleGroupStructBuilder) updates]) =
      _$MuscleGroupStruct;
}

MuscleGroupStruct createMuscleGroupStruct({
  String? name,
  String? image,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MuscleGroupStruct(
      (m) => m
        ..name = name
        ..image = image
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

MuscleGroupStruct? updateMuscleGroupStruct(
  MuscleGroupStruct? muscleGroup, {
  bool clearUnsetFields = true,
}) =>
    muscleGroup != null
        ? (muscleGroup.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addMuscleGroupStructData(
  Map<String, dynamic> firestoreData,
  MuscleGroupStruct? muscleGroup,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (muscleGroup == null) {
    return;
  }
  if (muscleGroup.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && muscleGroup.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final muscleGroupData =
      getMuscleGroupFirestoreData(muscleGroup, forFieldValue);
  final nestedData =
      muscleGroupData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = muscleGroup.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getMuscleGroupFirestoreData(
  MuscleGroupStruct? muscleGroup, [
  bool forFieldValue = false,
]) {
  if (muscleGroup == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(MuscleGroupStruct.serializer, muscleGroup);

  // Add any Firestore field values
  muscleGroup.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMuscleGroupListFirestoreData(
  List<MuscleGroupStruct>? muscleGroups,
) =>
    muscleGroups?.map((m) => getMuscleGroupFirestoreData(m, true)).toList() ??
    [];
