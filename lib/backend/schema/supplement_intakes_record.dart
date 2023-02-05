import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'supplement_intakes_record.g.dart';

abstract class SupplementIntakesRecord
    implements Built<SupplementIntakesRecord, SupplementIntakesRecordBuilder> {
  static Serializer<SupplementIntakesRecord> get serializer =>
      _$supplementIntakesRecordSerializer;

  SupplementIntakeStruct get data;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(SupplementIntakesRecordBuilder builder) =>
      builder..data = SupplementIntakeStructBuilder();

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('supplementIntakes')
          : FirebaseFirestore.instance.collectionGroup('supplementIntakes');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('supplementIntakes').doc();

  static Stream<SupplementIntakesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SupplementIntakesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SupplementIntakesRecord._();
  factory SupplementIntakesRecord(
          [void Function(SupplementIntakesRecordBuilder) updates]) =
      _$SupplementIntakesRecord;

  static SupplementIntakesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSupplementIntakesRecordData({
  SupplementIntakeStruct? data,
}) {
  final firestoreData = serializers.toFirestore(
    SupplementIntakesRecord.serializer,
    SupplementIntakesRecord(
      (s) => s..data = SupplementIntakeStructBuilder(),
    ),
  );

  // Handle nested data for "data" field.
  addSupplementIntakeStructData(firestoreData, data, 'data');

  return firestoreData;
}
