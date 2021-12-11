import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'car_parking_record.g.dart';

abstract class CarParkingRecord
    implements Built<CarParkingRecord, CarParkingRecordBuilder> {
  static Serializer<CarParkingRecord> get serializer =>
      _$carParkingRecordSerializer;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CarParkingRecordBuilder builder) => builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('car_parking');

  static Stream<CarParkingRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  CarParkingRecord._();
  factory CarParkingRecord([void Function(CarParkingRecordBuilder) updates]) =
      _$CarParkingRecord;

  static CarParkingRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCarParkingRecordData() => serializers.toFirestore(
    CarParkingRecord.serializer, CarParkingRecord((c) => c));
