// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdviceModelImpl _$$AdviceModelImplFromJson(Map<String, dynamic> json) =>
    _$AdviceModelImpl(
      id: json['id'] as int,
      type: json['type'] as String,
      advice: json['advice'] as String,
    );

Map<String, dynamic> _$$AdviceModelImplToJson(_$AdviceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'advice': instance.advice,
    };
