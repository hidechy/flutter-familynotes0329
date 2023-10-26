// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChildCheckupRecordSaveRequest _$$_ChildCheckupRecordSaveRequestFromJson(
        Map<String, dynamic> json) =>
    _$_ChildCheckupRecordSaveRequest(
      checkupId: json['mother_checkup_record_id'] as int?,
      childId: json['child_id'] as int,
      checkupDay: json['checkup_day'] as String,
      gestationalWeek: json['gestational_week'] as int?,
      gestationalWeekDay: json['gestational_week_day'] as int?,
      weight: (json['weight'] as num?)?.toDouble(),
      isNormal: json['is_normal'] as String?,
      isTa: json['is_ta'] as String?,
      isPih: json['is_pih'] as String?,
      isGdm: json['is_gdm'] as String?,
      isAnemia: json['is_anemia'] as String?,
      isOtherDisease: json['is_other_disease'] as String?,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$_ChildCheckupRecordSaveRequestToJson(
        _$_ChildCheckupRecordSaveRequest instance) =>
    <String, dynamic>{
      'mother_checkup_record_id': instance.checkupId,
      'child_id': instance.childId,
      'checkup_day': instance.checkupDay,
      'gestational_week': instance.gestationalWeek,
      'gestational_week_day': instance.gestationalWeekDay,
      'weight': instance.weight,
      'is_normal': instance.isNormal,
      'is_ta': instance.isTa,
      'is_pih': instance.isPih,
      'is_gdm': instance.isGdm,
      'is_anemia': instance.isAnemia,
      'is_other_disease': instance.isOtherDisease,
      'note': instance.note,
    };
