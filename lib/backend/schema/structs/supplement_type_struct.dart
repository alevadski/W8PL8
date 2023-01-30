import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'supplement_type_struct.g.dart';

abstract class SupplementTypeStruct
    implements Built<SupplementTypeStruct, SupplementTypeStructBuilder> {
  static Serializer<SupplementTypeStruct> get serializer =>
      _$supplementTypeStructSerializer;

  String? get name;

  String? get color;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(SupplementTypeStructBuilder builder) => builder
    ..name = ''
    ..color = ''
    ..firestoreUtilData = FirestoreUtilData();

  SupplementTypeStruct._();
  factory SupplementTypeStruct(
          [void Function(SupplementTypeStructBuilder) updates]) =
      _$SupplementTypeStruct;
}

SupplementTypeStruct createSupplementTypeStruct({
  String? name,
  String? color,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SupplementTypeStruct(
      (s) => s
        ..name = name
        ..color = color
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

SupplementTypeStruct? updateSupplementTypeStruct(
  SupplementTypeStruct? supplementType, {
  bool clearUnsetFields = true,
}) =>
    supplementType != null
        ? (supplementType.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addSupplementTypeStructData(
  Map<String, dynamic> firestoreData,
  SupplementTypeStruct? supplementType,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (supplementType == null) {
    return;
  }
  if (supplementType.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && supplementType.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final supplementTypeData =
      getSupplementTypeFirestoreData(supplementType, forFieldValue);
  final nestedData =
      supplementTypeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = supplementType.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getSupplementTypeFirestoreData(
  SupplementTypeStruct? supplementType, [
  bool forFieldValue = false,
]) {
  if (supplementType == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(SupplementTypeStruct.serializer, supplementType);

  // Add any Firestore field values
  supplementType.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSupplementTypeListFirestoreData(
  List<SupplementTypeStruct>? supplementTypes,
) =>
    supplementTypes
        ?.map((s) => getSupplementTypeFirestoreData(s, true))
        .toList() ??
    [];
