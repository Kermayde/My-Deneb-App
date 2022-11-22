// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planets_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PlanetsRecord> _$planetsRecordSerializer =
    new _$PlanetsRecordSerializer();

class _$PlanetsRecordSerializer implements StructuredSerializer<PlanetsRecord> {
  @override
  final Iterable<Type> types = const [PlanetsRecord, _$PlanetsRecord];
  @override
  final String wireName = 'PlanetsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PlanetsRecord object,
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
    value = object.distance;
    if (value != null) {
      result
        ..add('Distance')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.size;
    if (value != null) {
      result
        ..add('Size')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nature;
    if (value != null) {
      result
        ..add('Nature')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('Type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('Description')
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
  PlanetsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlanetsRecordBuilder();

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
        case 'Distance':
          result.distance = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Nature':
          result.nature = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Image':
          result.image = serializers.deserialize(value,
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

class _$PlanetsRecord extends PlanetsRecord {
  @override
  final String? name;
  @override
  final String? distance;
  @override
  final String? size;
  @override
  final String? nature;
  @override
  final String? type;
  @override
  final String? description;
  @override
  final String? image;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PlanetsRecord([void Function(PlanetsRecordBuilder)? updates]) =>
      (new PlanetsRecordBuilder()..update(updates))._build();

  _$PlanetsRecord._(
      {this.name,
      this.distance,
      this.size,
      this.nature,
      this.type,
      this.description,
      this.image,
      this.ffRef})
      : super._();

  @override
  PlanetsRecord rebuild(void Function(PlanetsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlanetsRecordBuilder toBuilder() => new PlanetsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlanetsRecord &&
        name == other.name &&
        distance == other.distance &&
        size == other.size &&
        nature == other.nature &&
        type == other.type &&
        description == other.description &&
        image == other.image &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, name.hashCode), distance.hashCode),
                            size.hashCode),
                        nature.hashCode),
                    type.hashCode),
                description.hashCode),
            image.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlanetsRecord')
          ..add('name', name)
          ..add('distance', distance)
          ..add('size', size)
          ..add('nature', nature)
          ..add('type', type)
          ..add('description', description)
          ..add('image', image)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PlanetsRecordBuilder
    implements Builder<PlanetsRecord, PlanetsRecordBuilder> {
  _$PlanetsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _distance;
  String? get distance => _$this._distance;
  set distance(String? distance) => _$this._distance = distance;

  String? _size;
  String? get size => _$this._size;
  set size(String? size) => _$this._size = size;

  String? _nature;
  String? get nature => _$this._nature;
  set nature(String? nature) => _$this._nature = nature;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PlanetsRecordBuilder() {
    PlanetsRecord._initializeBuilder(this);
  }

  PlanetsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _distance = $v.distance;
      _size = $v.size;
      _nature = $v.nature;
      _type = $v.type;
      _description = $v.description;
      _image = $v.image;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlanetsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlanetsRecord;
  }

  @override
  void update(void Function(PlanetsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlanetsRecord build() => _build();

  _$PlanetsRecord _build() {
    final _$result = _$v ??
        new _$PlanetsRecord._(
            name: name,
            distance: distance,
            size: size,
            nature: nature,
            type: type,
            description: description,
            image: image,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
