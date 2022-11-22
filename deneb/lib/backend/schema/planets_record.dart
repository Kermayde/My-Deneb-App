import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'planets_record.g.dart';

abstract class PlanetsRecord
    implements Built<PlanetsRecord, PlanetsRecordBuilder> {
  static Serializer<PlanetsRecord> get serializer => _$planetsRecordSerializer;

  @BuiltValueField(wireName: 'Name')
  String? get name;

  @BuiltValueField(wireName: 'Distance')
  String? get distance;

  @BuiltValueField(wireName: 'Size')
  String? get size;

  @BuiltValueField(wireName: 'Nature')
  String? get nature;

  @BuiltValueField(wireName: 'Type')
  String? get type;

  @BuiltValueField(wireName: 'Description')
  String? get description;

  @BuiltValueField(wireName: 'Image')
  String? get image;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PlanetsRecordBuilder builder) => builder
    ..name = ''
    ..distance = ''
    ..size = ''
    ..nature = ''
    ..type = ''
    ..description = ''
    ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('planets');

  static Stream<PlanetsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PlanetsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PlanetsRecord._();
  factory PlanetsRecord([void Function(PlanetsRecordBuilder) updates]) =
      _$PlanetsRecord;

  static PlanetsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPlanetsRecordData({
  String? name,
  String? distance,
  String? size,
  String? nature,
  String? type,
  String? description,
  String? image,
}) {
  final firestoreData = serializers.toFirestore(
    PlanetsRecord.serializer,
    PlanetsRecord(
      (p) => p
        ..name = name
        ..distance = distance
        ..size = size
        ..nature = nature
        ..type = type
        ..description = description
        ..image = image,
    ),
  );

  return firestoreData;
}
