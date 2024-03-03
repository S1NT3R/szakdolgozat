// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chore_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChoreModelImpl _$$ChoreModelImplFromJson(Map<String, dynamic> json) =>
    _$ChoreModelImpl(
      id: json['id'] as int,
      userId: json['userId'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      isCompleted: json['isCompleted'] as bool,
      dueDate: json['dueDate'] as String?,
      completedAt: json['completedAt'] as String?,
    );

Map<String, dynamic> _$$ChoreModelImplToJson(_$ChoreModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'name': instance.name,
      'description': instance.description,
      'isCompleted': instance.isCompleted,
      'dueDate': instance.dueDate,
      'completedAt': instance.completedAt,
    };
