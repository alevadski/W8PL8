import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'exercises_record.g.dart';

abstract class ExercisesRecord
    implements Built<ExercisesRecord, ExercisesRecordBuilder> {
  static Serializer<ExercisesRecord> get serializer =>
      _$exercisesRecordSerializer;

  String? get name;

  String? get note;

  BuiltList<RepStruct>? get reps;

  @BuiltValueField(wireName: 'total_lifted')
  double? get totalLifted;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(ExercisesRecordBuilder builder) => builder
    ..name = ''
    ..note = ''
    ..reps = ListBuilder()
    ..totalLifted = 0.0;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('exercises')
          : FirebaseFirestore.instance.collectionGroup('exercises');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('exercises').doc();

  static Stream<ExercisesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ExercisesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ExercisesRecord._();
  factory ExercisesRecord([void Function(ExercisesRecordBuilder) updates]) =
      _$ExercisesRecord;

  static ExercisesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createExercisesRecordData({
  String? name,
  String? note,
  double? totalLifted,
}) {
  final firestoreData = serializers.toFirestore(
    ExercisesRecord.serializer,
    ExercisesRecord(
      (e) => e
        ..name = name
        ..note = note
        ..reps = null
        ..totalLifted = totalLifted,
    ),
  );

  return firestoreData;
}
