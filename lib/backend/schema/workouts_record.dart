import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'workouts_record.g.dart';

abstract class WorkoutsRecord
    implements Built<WorkoutsRecord, WorkoutsRecordBuilder> {
  static Serializer<WorkoutsRecord> get serializer =>
      _$workoutsRecordSerializer;

  DateTime? get date;

  int? get duration;

  BuiltList<RepetitionStruct>? get repetitions;

  double? get totalLifted;

  int? get totalExercises;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(WorkoutsRecordBuilder builder) => builder
    ..duration = 0
    ..repetitions = ListBuilder()
    ..totalLifted = 0.0
    ..totalExercises = 0;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('workouts')
          : FirebaseFirestore.instance.collectionGroup('workouts');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('workouts').doc();

  static Stream<WorkoutsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<WorkoutsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  WorkoutsRecord._();
  factory WorkoutsRecord([void Function(WorkoutsRecordBuilder) updates]) =
      _$WorkoutsRecord;

  static WorkoutsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createWorkoutsRecordData({
  DateTime? date,
  int? duration,
  double? totalLifted,
  int? totalExercises,
}) {
  final firestoreData = serializers.toFirestore(
    WorkoutsRecord.serializer,
    WorkoutsRecord(
      (w) => w
        ..date = date
        ..duration = duration
        ..repetitions = null
        ..totalLifted = totalLifted
        ..totalExercises = totalExercises,
    ),
  );

  return firestoreData;
}
