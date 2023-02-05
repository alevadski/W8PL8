import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'supplement_types_record.g.dart';

abstract class SupplementTypesRecord
    implements Built<SupplementTypesRecord, SupplementTypesRecordBuilder> {
  static Serializer<SupplementTypesRecord> get serializer =>
      _$supplementTypesRecordSerializer;

  SupplementTypeStruct get data;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SupplementTypesRecordBuilder builder) =>
      builder..data = SupplementTypeStructBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('supplementTypes');

  static Stream<SupplementTypesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SupplementTypesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SupplementTypesRecord._();
  factory SupplementTypesRecord(
          [void Function(SupplementTypesRecordBuilder) updates]) =
      _$SupplementTypesRecord;

  static SupplementTypesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSupplementTypesRecordData({
  SupplementTypeStruct? data,
}) {
  final firestoreData = serializers.toFirestore(
    SupplementTypesRecord.serializer,
    SupplementTypesRecord(
      (s) => s..data = SupplementTypeStructBuilder(),
    ),
  );

  // Handle nested data for "data" field.
  addSupplementTypeStructData(firestoreData, data, 'data');

  return firestoreData;
}
