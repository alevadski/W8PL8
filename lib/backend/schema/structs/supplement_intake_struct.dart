import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'supplement_intake_struct.g.dart';

abstract class SupplementIntakeStruct
    implements Built<SupplementIntakeStruct, SupplementIntakeStructBuilder> {
  static Serializer<SupplementIntakeStruct> get serializer =>
      _$supplementIntakeStructSerializer;

  SupplementTypeStruct get supplementType;

  int? get amount;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(SupplementIntakeStructBuilder builder) =>
      builder
        ..supplementType = SupplementTypeStructBuilder()
        ..amount = 0
        ..firestoreUtilData = FirestoreUtilData();

  SupplementIntakeStruct._();
  factory SupplementIntakeStruct(
          [void Function(SupplementIntakeStructBuilder) updates]) =
      _$SupplementIntakeStruct;
}

SupplementIntakeStruct createSupplementIntakeStruct({
  SupplementTypeStruct? supplementType,
  int? amount,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SupplementIntakeStruct(
      (s) => s
        ..supplementType =
            supplementType?.toBuilder() ?? SupplementTypeStructBuilder()
        ..amount = amount
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

SupplementIntakeStruct? updateSupplementIntakeStruct(
  SupplementIntakeStruct? supplementIntake, {
  bool clearUnsetFields = true,
}) =>
    supplementIntake != null
        ? (supplementIntake.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addSupplementIntakeStructData(
  Map<String, dynamic> firestoreData,
  SupplementIntakeStruct? supplementIntake,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (supplementIntake == null) {
    return;
  }
  if (supplementIntake.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && supplementIntake.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final supplementIntakeData =
      getSupplementIntakeFirestoreData(supplementIntake, forFieldValue);
  final nestedData =
      supplementIntakeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = supplementIntake.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getSupplementIntakeFirestoreData(
  SupplementIntakeStruct? supplementIntake, [
  bool forFieldValue = false,
]) {
  if (supplementIntake == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(
      SupplementIntakeStruct.serializer, supplementIntake);

  // Handle nested data for "supplementType" field.
  addSupplementTypeStructData(firestoreData, supplementIntake.supplementType,
      'supplementType', forFieldValue);

  // Add any Firestore field values
  supplementIntake.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSupplementIntakeListFirestoreData(
  List<SupplementIntakeStruct>? supplementIntakes,
) =>
    supplementIntakes
        ?.map((s) => getSupplementIntakeFirestoreData(s, true))
        .toList() ??
    [];
