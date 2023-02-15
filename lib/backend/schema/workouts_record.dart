import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'workouts_record.g.dart';

abstract class WorkoutsRecord
    implements Built<WorkoutsRecord, WorkoutsRecordBuilder> {
  static Serializer<WorkoutsRecord> get serializer =>
      _$workoutsRecordSerializer;

  DateTime? get startedAt;

  DateTime? get endedAt;

  double? get totalLifted;

  DocumentReference? get userRef;

  BuiltList<String>? get muscleGroups;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(WorkoutsRecordBuilder builder) => builder
    ..totalLifted = 0.0
    ..muscleGroups = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('workouts');

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
  DateTime? startedAt,
  DateTime? endedAt,
  double? totalLifted,
  DocumentReference? userRef,
}) {
  final firestoreData = serializers.toFirestore(
    WorkoutsRecord.serializer,
    WorkoutsRecord(
      (w) => w
        ..startedAt = startedAt
        ..endedAt = endedAt
        ..totalLifted = totalLifted
        ..userRef = userRef
        ..muscleGroups = null,
    ),
  );

  return firestoreData;
}
