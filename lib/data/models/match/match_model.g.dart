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
      goal: GoalsModel.fromJson(json['goal'] as Map<String, dynamic>),
      video: json['video'] as String? ?? ' ',
    );

Map<String, dynamic> _$$MatchModelImplToJson(_$MatchModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'place': instance.place,
      'datetime': instance.datetime.toIso8601String(),
      'league': instance.league,
      'goal': instance.goal,
      'video': instance.video,
    };
