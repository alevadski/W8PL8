import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'selected_supplements_record.g.dart';

abstract class SelectedSupplementsRecord
    implements
        Built<SelectedSupplementsRecord, SelectedSupplementsRecordBuilder> {
  static Serializer<SelectedSupplementsRecord> get serializer =>
      _$selectedSupplementsRecordSerializer;

  SupplementTypeStruct get data;

  bool? get isCustom;

  DateTime? get addedAt;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(SelectedSupplementsRecordBuilder builder) =>
      builder
        ..data = SupplementTypeStructBuilder()
        ..isCustom = false;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('selectedSupplements')
          : FirebaseFirestore.instance.collectionGroup('selectedSupplements');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('selectedSupplements').doc();

  static Stream<SelectedSupplementsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SelectedSupplementsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SelectedSupplementsRecord._();
  factory SelectedSupplementsRecord(
          [void Function(SelectedSupplementsRecordBuilder) updates]) =
      _$SelectedSupplementsRecord;

  static SelectedSupplementsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSelectedSupplementsRecordData({
  SupplementTypeStruct? data,
  bool? isCustom,
  DateTime? addedAt,
}) {
  final firestoreData = serializers.toFirestore(
    SelectedSupplementsRecord.serializer,
    SelectedSupplementsRecord(
      (s) => s
        ..data = SupplementTypeStructBuilder()
        ..isCustom = isCustom
        ..addedAt = addedAt,
    ),
  );

  // Handle nested data for "data" field.
  addSupplementTypeStructData(firestoreData, data, 'data');

  return firestoreData;
}
