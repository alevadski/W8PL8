import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'custom_supplements_record.g.dart';

abstract class CustomSupplementsRecord
    implements Built<CustomSupplementsRecord, CustomSupplementsRecordBuilder> {
  static Serializer<CustomSupplementsRecord> get serializer =>
      _$customSupplementsRecordSerializer;

  SupplementTypeStruct get data;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(CustomSupplementsRecordBuilder builder) =>
      builder..data = SupplementTypeStructBuilder();

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('customSupplements')
          : FirebaseFirestore.instance.collectionGroup('customSupplements');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('customSupplements').doc();

  static Stream<CustomSupplementsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CustomSupplementsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CustomSupplementsRecord._();
  factory CustomSupplementsRecord(
          [void Function(CustomSupplementsRecordBuilder) updates]) =
      _$CustomSupplementsRecord;

  static CustomSupplementsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCustomSupplementsRecordData({
  SupplementTypeStruct? data,
}) {
  final firestoreData = serializers.toFirestore(
    CustomSupplementsRecord.serializer,
    CustomSupplementsRecord(
      (c) => c..data = SupplementTypeStructBuilder(),
    ),
  );

  // Handle nested data for "data" field.
  addSupplementTypeStructData(firestoreData, data, 'data');

  return firestoreData;
}
