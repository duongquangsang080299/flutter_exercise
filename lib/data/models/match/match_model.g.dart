// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MatchModelImpl _$$MatchModelImplFromJson(Map<String, dynamic> json) =>
    _$MatchModelImpl(
      id: json['id'] as String,
      place: json['place'] as String,
      datetime: DateTime.parse(json['datetime'] as String),
      league: json['league'] as String,
      goal: json['goals_id'] as String,
      video: json['video'] as String? ?? ' ',
    );

Map<String, dynamic> _$$MatchModelImplToJson(_$MatchModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'place': instance.place,
      'datetime': instance.datetime.toIso8601String(),
      'league': instance.league,
      'goals_id': instance.goal,
      'video': instance.video,
    };
