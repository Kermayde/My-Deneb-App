import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'blackholes_record.g.dart';

abstract class BlackholesRecord
    implements Built<BlackholesRecord, BlackholesRecordBuilder> {
  static Serializer<BlackholesRecord> get serializer =>
      _$blackholesRecordSerializer;

  @BuiltValueField(wireName: 'Name')
  String? get name;

  @BuiltValueField(wireName: 'Image')
  String? get image;

  @BuiltValueField(wireName: 'Distance')
  String? get distance;

  @BuiltValueField(wireName: 'SolarMass')
  String? get solarMass;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(BlackholesRecordBuilder builder) => builder
    ..name = ''
    ..image = ''
    ..distance = ''
    ..solarMass = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('blackholes');

  static Stream<BlackholesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<BlackholesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  BlackholesRecord._();
  factory BlackholesRecord([void Function(BlackholesRecordBuilder) updates]) =
      _$BlackholesRecord;

  static BlackholesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createBlackholesRecordData({
  String? name,
  String? image,
  String? distance,
  String? solarMass,
}) {
  final firestoreData = serializers.toFirestore(
    BlackholesRecord.serializer,
    BlackholesRecord(
      (b) => b
        ..name = name
        ..image = image
        ..distance = distance
        ..solarMass = solarMass,
    ),
  );

  return firestoreData;
}
