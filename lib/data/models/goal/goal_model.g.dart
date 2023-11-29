// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoalsModelImpl _$$GoalsModelImplFromJson(Map<String, dynamic> json) =>
    _$GoalsModelImpl(
      id: json['id'] as int,
      teamRed: json['team_red'] as int,
      teamVictory: json['team_victory'] as int,
      scoreRed: json['score_red'] as int,
      scoreVictory: json['score_victory'] as int,
    );

Map<String, dynamic> _$$GoalsModelImplToJson(_$GoalsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'team_red': instance.teamRed,
      'team_victory': instance.teamVictory,
      'score_red': instance.scoreRed,
      'score_victory': instance.scoreVictory,
    };
