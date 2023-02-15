import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'repetitions_record.g.dart';

abstract class RepetitionsRecord
    implements Built<RepetitionsRecord, RepetitionsRecordBuilder> {
  static Serializer<RepetitionsRecord> get serializer =>
      _$repetitionsRecordSerializer;

  RepetitionStruct get data;

  DocumentReference? get exerciseRef;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(RepetitionsRecordBuilder builder) =>
      builder..data = RepetitionStructBuilder();

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('repetitions')
          : FirebaseFirestore.instance.collectionGroup('repetitions');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('repetitions').doc();

  static Stream<RepetitionsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RepetitionsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RepetitionsRecord._();
  factory RepetitionsRecord([void Function(RepetitionsRecordBuilder) updates]) =
      _$RepetitionsRecord;

  static RepetitionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRepetitionsRecordData({
  RepetitionStruct? data,
  DocumentReference? exerciseRef,
}) {
  final firestoreData = serializers.toFirestore(
    RepetitionsRecord.serializer,
    RepetitionsRecord(
      (r) => r
        ..data = RepetitionStructBuilder()
        ..exerciseRef = exerciseRef,
    ),
  );

  // Handle nested data for "data" field.
  addRepetitionStructData(firestoreData, data, 'data');

  return firestoreData;
}
