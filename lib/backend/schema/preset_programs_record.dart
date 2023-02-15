import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'preset_programs_record.g.dart';

abstract class PresetProgramsRecord
    implements Built<PresetProgramsRecord, PresetProgramsRecordBuilder> {
  static Serializer<PresetProgramsRecord> get serializer =>
      _$presetProgramsRecordSerializer;

  String? get name;

  BuiltList<SetStruct>? get mondayWorkout;

  BuiltList<SetStruct>? get tuesdayWorkout;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PresetProgramsRecordBuilder builder) => builder
    ..name = ''
    ..mondayWorkout = ListBuilder()
    ..tuesdayWorkout = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('presetPrograms');

  static Stream<PresetProgramsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PresetProgramsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PresetProgramsRecord._();
  factory PresetProgramsRecord(
          [void Function(PresetProgramsRecordBuilder) updates]) =
      _$PresetProgramsRecord;

  static PresetProgramsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPresetProgramsRecordData({
  String? name,
}) {
  final firestoreData = serializers.toFirestore(
    PresetProgramsRecord.serializer,
    PresetProgramsRecord(
      (p) => p
        ..name = name
        ..mondayWorkout = null
        ..tuesdayWorkout = null,
    ),
  );

  return firestoreData;
}
