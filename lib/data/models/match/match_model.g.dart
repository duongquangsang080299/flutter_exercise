// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MatchModelImpl _$$MatchModelImplFromJson(Map<String, dynamic> json) =>
    _$MatchModelImpl(
      id: json['id'] as String,
      location: json['location'] as String,
      dateTime: DateTime.parse(json['dateTime'] as String),
      teamHome: TeamModel.fromJson(json['teamHome'] as Map<String, dynamic>),
      teamAway: TeamModel.fromJson(json['teamAway'] as Map<String, dynamic>),
      result: json['result'] as String,
      history: HistoryModel.fromJson(json['history'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MatchModelImplToJson(_$MatchModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'location': instance.location,
      'dateTime': instance.dateTime.toIso8601String(),
      'teamHome': instance.teamHome,
      'teamAway': instance.teamAway,
      'result': instance.result,
      'history': instance.history,
    };
