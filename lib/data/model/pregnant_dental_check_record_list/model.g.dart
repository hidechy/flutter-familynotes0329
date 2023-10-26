// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PregnantDentalCheckRecordModel _$$_PregnantDentalCheckRecordModelFromJson(
        Map<String, dynamic> json) =>
    _$_PregnantDentalCheckRecordModel(
      motherDentalCheckupRecordId:
          json['mother_dental_checkup_record_id'] as int,
      childId: json['child_id'] as int,
      checkupDay: json['checkup_day'] as String,
    );

Map<String, dynamic> _$$_PregnantDentalCheckRecordModelToJson(
        _$_PregnantDentalCheckRecordModel instance) =>
    <String, dynamic>{
      'mother_dental_checkup_record_id': instance.motherDentalCheckupRecordId,
      'child_id': instance.childId,
      'checkup_day': instance.checkupDay,
    };
