// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clothe_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ClotheModelImpl _$$ClotheModelImplFromJson(Map<String, dynamic> json) =>
    _$ClotheModelImpl(
      id: json['id'] as int,
      userId: json['userId'] as String,
      name: json['name'] as String,
      material: json['material'] as String,
      type: json['type'] as String,
      colorway: json['colorway'] as String,
      washingInstructions: (json['washingInstructions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isInLaundry: json['isInLaundry'] as bool,
      picture: json['picture'] as String?,
    );

Map<String, dynamic> _$$ClotheModelImplToJson(_$ClotheModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'name': instance.name,
      'material': instance.material,
      'type': instance.type,
      'colorway': instance.colorway,
      'washingInstructions': instance.washingInstructions,
      'isInLaundry': instance.isInLaundry,
      'picture': instance.picture,
    };
