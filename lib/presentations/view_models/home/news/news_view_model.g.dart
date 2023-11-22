// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsViewModelImpl _$$NewsViewModelImplFromJson(Map<String, dynamic> json) =>
    _$NewsViewModelImpl(
      id: json['id'] as String?,
      result: json['result'] as String,
      title: json['title'] as String,
      dateTime: DateTime.parse(json['dateTime'] as String),
      video: json['video'] as String,
      image: json['image'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$NewsViewModelImplToJson(_$NewsViewModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'result': instance.result,
      'title': instance.title,
      'dateTime': instance.dateTime.toIso8601String(),
      'video': instance.video,
      'image': instance.image,
      'description': instance.description,
    };
