import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'programs_record.g.dart';

abstract class ProgramsRecord
    implements Built<ProgramsRecord, ProgramsRecordBuilder> {
  static Serializer<ProgramsRecord> get serializer =>
      _$programsRecordSerializer;

  DocumentReference? get userRef;

  BuiltList<SetStruct>? get mondayWorkout;

  BuiltList<SetStruct>? get tuesdayWorkout;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProgramsRecordBuilder builder) => builder
    ..mondayWorkout = ListBuilder()
    ..tuesdayWorkout = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('programs');

  static Stream<ProgramsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProgramsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProgramsRecord._();
  factory ProgramsRecord([void Function(ProgramsRecordBuilder) updates]) =
      _$ProgramsRecord;

  static ProgramsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProgramsRecordData({
  DocumentReference? userRef,
}) {
  final firestoreData = serializers.toFirestore(
    ProgramsRecord.serializer,
    ProgramsRecord(
      (p) => p
        ..userRef = userRef
        ..mondayWorkout = null
        ..tuesdayWorkout = null,
    ),
  );

  return firestoreData;
}
