// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blackholes_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BlackholesRecord> _$blackholesRecordSerializer =
    new _$BlackholesRecordSerializer();

class _$BlackholesRecordSerializer
    implements StructuredSerializer<BlackholesRecord> {
  @override
  final Iterable<Type> types = const [BlackholesRecord, _$BlackholesRecord];
  @override
  final String wireName = 'BlackholesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, BlackholesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('Image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.distance;
    if (value != null) {
      result
        ..add('Distance')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.solarMass;
    if (value != null) {
      result
        ..add('SolarMass')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  BlackholesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BlackholesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Distance':
          result.distance = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'SolarMass':
          result.solarMass = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$BlackholesRecord extends BlackholesRecord {
  @override
  final String? name;
  @override
  final String? image;
  @override
  final String? distance;
  @override
  final String? solarMass;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$BlackholesRecord(
          [void Function(BlackholesRecordBuilder)? updates]) =>
      (new BlackholesRecordBuilder()..update(updates))._build();

  _$BlackholesRecord._(
      {this.name, this.image, this.distance, this.solarMass, this.ffRef})
      : super._();

  @override
  BlackholesRecord rebuild(void Function(BlackholesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BlackholesRecordBuilder toBuilder() =>
      new BlackholesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BlackholesRecord &&
        name == other.name &&
        image == other.image &&
        distance == other.distance &&
        solarMass == other.solarMass &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, name.hashCode), image.hashCode), distance.hashCode),
            solarMass.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BlackholesRecord')
          ..add('name', name)
          ..add('image', image)
          ..add('distance', distance)
          ..add('solarMass', solarMass)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class BlackholesRecordBuilder
    implements Builder<BlackholesRecord, BlackholesRecordBuilder> {
  _$BlackholesRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  String? _distance;
  String? get distance => _$this._distance;
  set distance(String? distance) => _$this._distance = distance;

  String? _solarMass;
  String? get solarMass => _$this._solarMass;
  set solarMass(String? solarMass) => _$this._solarMass = solarMass;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  BlackholesRecordBuilder() {
    BlackholesRecord._initializeBuilder(this);
  }

  BlackholesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _image = $v.image;
      _distance = $v.distance;
      _solarMass = $v.solarMass;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BlackholesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BlackholesRecord;
  }

  @override
  void update(void Function(BlackholesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BlackholesRecord build() => _build();

  _$BlackholesRecord _build() {
    final _$result = _$v ??
        new _$BlackholesRecord._(
            name: name,
            image: image,
            distance: distance,
            solarMass: solarMass,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
