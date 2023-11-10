// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TeamModelImpl _$$TeamModelImplFromJson(Map<String, dynamic> json) =>
    _$TeamModelImpl(
      teamId: json['teamId'] as String,
      teamName: json['teamName'] as String,
      matchId: json['matchId'] as String,
      avatar: json['avatar'] as String,
      result: json['result'] as String,
    );

Map<String, dynamic> _$$TeamModelImplToJson(_$TeamModelImpl instance) =>
    <String, dynamic>{
      'teamId': instance.teamId,
      'teamName': instance.teamName,
      'matchId': instance.matchId,
      'avatar': instance.avatar,
      'result': instance.result,
    };
