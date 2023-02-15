import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'exercise_goals_record.g.dart';

abstract class ExerciseGoalsRecord
    implements Built<ExerciseGoalsRecord, ExerciseGoalsRecordBuilder> {
  static Serializer<ExerciseGoalsRecord> get serializer =>
      _$exerciseGoalsRecordSerializer;

  DocumentReference? get userRef;

  ExerciseGoalStruct get data;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ExerciseGoalsRecordBuilder builder) =>
      builder..data = ExerciseGoalStructBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('exerciseGoals');

  static Stream<ExerciseGoalsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ExerciseGoalsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ExerciseGoalsRecord._();
  factory ExerciseGoalsRecord(
          [void Function(ExerciseGoalsRecordBuilder) updates]) =
      _$ExerciseGoalsRecord;

  static ExerciseGoalsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createExerciseGoalsRecordData({
  DocumentReference? userRef,
  ExerciseGoalStruct? data,
}) {
  final firestoreData = serializers.toFirestore(
    ExerciseGoalsRecord.serializer,
    ExerciseGoalsRecord(
      (e) => e
        ..userRef = userRef
        ..data = ExerciseGoalStructBuilder(),
    ),
  );

  // Handle nested data for "data" field.
  addExerciseGoalStructData(firestoreData, data, 'data');

  return firestoreData;
}
