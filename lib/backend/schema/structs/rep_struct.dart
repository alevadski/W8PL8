import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'rep_struct.g.dart';

abstract class RepStruct implements Built<RepStruct, RepStructBuilder> {
  static Serializer<RepStruct> get serializer => _$repStructSerializer;

  int? get weight;

  int? get count;

  String? get note;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(RepStructBuilder builder) => builder
    ..weight = 0
    ..count = 0
    ..note = ''
    ..firestoreUtilData = FirestoreUtilData();

  RepStruct._();
  factory RepStruct([void Function(RepStructBuilder) updates]) = _$RepStruct;
}

RepStruct createRepStruct({
  int? weight,
  int? count,
  String? note,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RepStruct(
      (r) => r
        ..weight = weight
        ..count = count
        ..note = note
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

RepStruct? updateRepStruct(
  RepStruct? rep, {
  bool clearUnsetFields = true,
}) =>
    rep != null
        ? (rep.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addRepStructData(
  Map<String, dynamic> firestoreData,
  RepStruct? rep,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (rep == null) {
    return;
  }
  if (rep.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && rep.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final repData = getRepFirestoreData(rep, forFieldValue);
  final nestedData = repData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = rep.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getRepFirestoreData(
  RepStruct? rep, [
  bool forFieldValue = false,
]) {
  if (rep == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(RepStruct.serializer, rep);

  // Add any Firestore field values
  rep.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRepListFirestoreData(
  List<RepStruct>? reps,
) =>
    reps?.map((r) => getRepFirestoreData(r, true)).toList() ?? [];
