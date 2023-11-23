// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoalsModelImpl _$$GoalsModelImplFromJson(Map<String, dynamic> json) =>
    _$GoalsModelImpl(
      id: json['id'] as String,
      teamRed: TeamModel.fromJson(json['teamRed'] as Map<String, dynamic>),
      teamVictory:
          TeamModel.fromJson(json['teamVictory'] as Map<String, dynamic>),
      score: json['score'] as String,
    );

Map<String, dynamic> _$$GoalsModelImplToJson(_$GoalsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'teamRed': instance.teamRed,
      'teamVictory': instance.teamVictory,
      'score': instance.score,
    };
