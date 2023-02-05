import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'supplement_unit_types_record.g.dart';

abstract class SupplementUnitTypesRecord
    implements
        Built<SupplementUnitTypesRecord, SupplementUnitTypesRecordBuilder> {
  static Serializer<SupplementUnitTypesRecord> get serializer =>
      _$supplementUnitTypesRecordSerializer;

  String? get name;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SupplementUnitTypesRecordBuilder builder) =>
      builder..name = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('supplementUnitTypes');

  static Stream<SupplementUnitTypesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SupplementUnitTypesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SupplementUnitTypesRecord._();
  factory SupplementUnitTypesRecord(
          [void Function(SupplementUnitTypesRecordBuilder) updates]) =
      _$SupplementUnitTypesRecord;

  static SupplementUnitTypesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSupplementUnitTypesRecordData({
  String? name,
}) {
  final firestoreData = serializers.toFirestore(
    SupplementUnitTypesRecord.serializer,
    SupplementUnitTypesRecord(
      (s) => s..name = name,
    ),
  );

  return firestoreData;
}
