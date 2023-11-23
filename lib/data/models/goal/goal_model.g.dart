// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GoalModelImpl _$$GoalModelImplFromJson(Map<String, dynamic> json) =>
    _$GoalModelImpl(
      id: json['id'] as String,
      teamRed: TeamModel.fromJson(json['teamRed'] as Map<String, dynamic>),
      teamVictory:
          TeamModel.fromJson(json['teamVictory'] as Map<String, dynamic>),
      scoreRed: json['scoreRed'] as int,
      scoreVictory: json['scoreVictory'] as int,
    );

Map<String, dynamic> _$$GoalModelImplToJson(_$GoalModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'teamRed': instance.teamRed,
      'teamVictory': instance.teamVictory,
      'scoreRed': instance.scoreRed,
      'scoreVictory': instance.scoreVictory,
    };
