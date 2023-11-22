// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResultModelImpl _$$ResultModelImplFromJson(Map<String, dynamic> json) =>
    _$ResultModelImpl(
      id: json['id'] as String,
      teamRed: TeamModel.fromJson(json['teamRed'] as Map<String, dynamic>),
      teamVictory:
          TeamModel.fromJson(json['teamVictory'] as Map<String, dynamic>),
      result: json['result'] as String,
    );

Map<String, dynamic> _$$ResultModelImplToJson(_$ResultModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'teamRed': instance.teamRed,
      'teamVictory': instance.teamVictory,
      'result': instance.result,
    };
