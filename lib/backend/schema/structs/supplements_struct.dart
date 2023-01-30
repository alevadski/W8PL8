import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'supplements_struct.g.dart';

abstract class SupplementsStruct
    implements Built<SupplementsStruct, SupplementsStructBuilder> {
  static Serializer<SupplementsStruct> get serializer =>
      _$supplementsStructSerializer;

  BuiltList<DocumentReference>? get selectedSupplements;

  BuiltList<SupplementTypeStruct> get customSupplements;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(SupplementsStructBuilder builder) => builder
    ..selectedSupplements = ListBuilder()
    ..customSupplements = ListBuilder()
    ..firestoreUtilData = FirestoreUtilData();

  SupplementsStruct._();
  factory SupplementsStruct([void Function(SupplementsStructBuilder) updates]) =
      _$SupplementsStruct;
}

SupplementsStruct createSupplementsStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SupplementsStruct(
      (s) => s
        ..selectedSupplements = null
        ..customSupplements = null
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

SupplementsStruct? updateSupplementsStruct(
  SupplementsStruct? supplements, {
  bool clearUnsetFields = true,
}) =>
    supplements != null
        ? (supplements.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addSupplementsStructData(
  Map<String, dynamic> firestoreData,
  SupplementsStruct? supplements,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (supplements == null) {
    return;
  }
  if (supplements.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && supplements.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final supplementsData =
      getSupplementsFirestoreData(supplements, forFieldValue);
  final nestedData =
      supplementsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = supplements.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getSupplementsFirestoreData(
  SupplementsStruct? supplements, [
  bool forFieldValue = false,
]) {
  if (supplements == null) {
    return {};
  }
  final firestoreData =
      serializers.toFirestore(SupplementsStruct.serializer, supplements);

  // Add any Firestore field values
  supplements.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSupplementsListFirestoreData(
  List<SupplementsStruct>? supplementss,
) =>
    supplementss?.map((s) => getSupplementsFirestoreData(s, true)).toList() ??
    [];
