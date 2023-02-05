import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'muscle_group_types_record.g.dart';

abstract class MuscleGroupTypesRecord
    implements Built<MuscleGroupTypesRecord, MuscleGroupTypesRecordBuilder> {
  static Serializer<MuscleGroupTypesRecord> get serializer =>
      _$muscleGroupTypesRecordSerializer;

  String? get name;

  String? get image;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MuscleGroupTypesRecordBuilder builder) =>
      builder
        ..name = ''
        ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('muscleGroupTypes');

  static Stream<MuscleGroupTypesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MuscleGroupTypesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MuscleGroupTypesRecord._();
  factory MuscleGroupTypesRecord(
          [void Function(MuscleGroupTypesRecordBuilder) updates]) =
      _$MuscleGroupTypesRecord;

  static MuscleGroupTypesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMuscleGroupTypesRecordData({
  String? name,
  String? image,
}) {
  final firestoreData = serializers.toFirestore(
    MuscleGroupTypesRecord.serializer,
    MuscleGroupTypesRecord(
      (m) => m
        ..name = name
        ..image = image,
    ),
  );

  return firestoreData;
}
