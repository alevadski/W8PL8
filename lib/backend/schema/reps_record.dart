import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'reps_record.g.dart';

abstract class RepsRecord implements Built<RepsRecord, RepsRecordBuilder> {
  static Serializer<RepsRecord> get serializer => _$repsRecordSerializer;

  DocumentReference? get exercise;

  int? get weight;

  int? get count;

  @BuiltValueField(wireName: 'total_lifted')
  double? get totalLifted;

  @BuiltValueField(wireName: 'exercise_name')
  String? get exerciseName;

  DateTime? get timestamp;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(RepsRecordBuilder builder) => builder
    ..weight = 0
    ..count = 0
    ..totalLifted = 0.0
    ..exerciseName = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('reps')
          : FirebaseFirestore.instance.collectionGroup('reps');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('reps').doc();

  static Stream<RepsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RepsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RepsRecord._();
  factory RepsRecord([void Function(RepsRecordBuilder) updates]) = _$RepsRecord;

  static RepsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRepsRecordData({
  DocumentReference? exercise,
  int? weight,
  int? count,
  double? totalLifted,
  String? exerciseName,
  DateTime? timestamp,
}) {
  final firestoreData = serializers.toFirestore(
    RepsRecord.serializer,
    RepsRecord(
      (r) => r
        ..exercise = exercise
        ..weight = weight
        ..count = count
        ..totalLifted = totalLifted
        ..exerciseName = exerciseName
        ..timestamp = timestamp,
    ),
  );

  return firestoreData;
}
