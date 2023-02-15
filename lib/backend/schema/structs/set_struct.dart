import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'set_struct.g.dart';

abstract class SetStruct implements Built<SetStruct, SetStructBuilder> {
  static Serializer<SetStruct> get serializer => _$setStructSerializer;

  double? get times;

  ExerciseStruct get exercise;

  BuiltList<double>? get repetitions;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(SetStructBuilder builder) => builder
    ..times = 0.0
    ..exercise = ExerciseStructBuilder()
    ..repetitions = ListBuilder()
    ..firestoreUtilData = FirestoreUtilData();

  SetStruct._();
  factory SetStruct([void Function(SetStructBuilder) updates]) = _$SetStruct;
}

SetStruct createSetStruct({
  double? times,
  ExerciseStruct? exercise,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SetStruct(
      (s) => s
        ..times = times
        ..exercise = exercise?.toBuilder() ?? ExerciseStructBuilder()
        ..repetitions = null
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

SetStruct? updateSetStruct(
  SetStruct? set, {
  bool clearUnsetFields = true,
}) =>
    set != null
        ? (set.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addSetStructData(
  Map<String, dynamic> firestoreData,
  SetStruct? set,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (set == null) {
    return;
  }
  if (set.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && set.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final setData = getSetFirestoreData(set, forFieldValue);
  final nestedData = setData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = set.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getSetFirestoreData(
  SetStruct? set, [
  bool forFieldValue = false,
]) {
  if (set == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(SetStruct.serializer, set);

  // Handle nested data for "exercise" field.
  addExerciseStructData(firestoreData, set.exercise, 'exercise', forFieldValue);

  // Add any Firestore field values
  set.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSetListFirestoreData(
  List<SetStruct>? sets,
) =>
    sets?.map((s) => getSetFirestoreData(s, true)).toList() ?? [];
