import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'preset_exercises_record.g.dart';

abstract class PresetExercisesRecord
    implements Built<PresetExercisesRecord, PresetExercisesRecordBuilder> {
  static Serializer<PresetExercisesRecord> get serializer =>
      _$presetExercisesRecordSerializer;

  String? get name;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PresetExercisesRecordBuilder builder) =>
      builder..name = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('presetExercises');

  static Stream<PresetExercisesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PresetExercisesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PresetExercisesRecord._();
  factory PresetExercisesRecord(
          [void Function(PresetExercisesRecordBuilder) updates]) =
      _$PresetExercisesRecord;

  static PresetExercisesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPresetExercisesRecordData({
  String? name,
}) {
  final firestoreData = serializers.toFirestore(
    PresetExercisesRecord.serializer,
    PresetExercisesRecord(
      (p) => p..name = name,
    ),
  );

  return firestoreData;
}
