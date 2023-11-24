// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoalsModelImpl _$$GoalsModelImplFromJson(Map<String, dynamic> json) =>
    _$GoalsModelImpl(
      id: json['id'] as String,
      teamRed: json['team_red'] as String,
      teamVictory: json['team_victory'] as String,
      scoreRed: json['score_Red'] as int,
      scoreVictory: json['score_Victory'] as int,
    );

Map<String, dynamic> _$$GoalsModelImplToJson(_$GoalsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'team_red': instance.teamRed,
      'team_victory': instance.teamVictory,
      'score_Red': instance.scoreRed,
      'score_Victory': instance.scoreVictory,
    };
