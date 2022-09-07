import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'exercise_list_record.g.dart';

abstract class ExerciseListRecord
    implements Built<ExerciseListRecord, ExerciseListRecordBuilder> {
  static Serializer<ExerciseListRecord> get serializer =>
      _$exerciseListRecordSerializer;

  String? get name;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ExerciseListRecordBuilder builder) =>
      builder..name = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('exerciseList');

  static Stream<ExerciseListRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ExerciseListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ExerciseListRecord._();
  factory ExerciseListRecord(
          [void Function(ExerciseListRecordBuilder) updates]) =
      _$ExerciseListRecord;

  static ExerciseListRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createExerciseListRecordData({
  String? name,
}) {
  final firestoreData = serializers.toFirestore(
    ExerciseListRecord.serializer,
    ExerciseListRecord(
      (e) => e..name = name,
    ),
  );

  return firestoreData;
}
