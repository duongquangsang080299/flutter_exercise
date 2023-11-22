// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListNewsModelImpl _$$ListNewsModelImplFromJson(Map<String, dynamic> json) =>
    _$ListNewsModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      dateTime: DateTime.parse(json['dateTime'] as String),
      teamHome: TeamModel.fromJson(json['teamHome'] as Map<String, dynamic>),
      teamAway: TeamModel.fromJson(json['teamAway'] as Map<String, dynamic>),
      result: json['result'] as String,
      image: json['image'] as String,
      video: json['video'] as String,
    );

Map<String, dynamic> _$$ListNewsModelImplToJson(_$ListNewsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'dateTime': instance.dateTime.toIso8601String(),
      'teamHome': instance.teamHome,
      'teamAway': instance.teamAway,
      'result': instance.result,
      'image': instance.image,
      'video': instance.video,
    };
