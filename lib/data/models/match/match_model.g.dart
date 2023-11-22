// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MatchModelImpl _$$MatchModelImplFromJson(Map<String, dynamic> json) =>
    _$MatchModelImpl(
      id: json['id'] as String,
      location: json['location'] as String,
      dayofMatch: DateTime.parse(json['dayofMatch'] as String),
      leagueTitle: json['leagueTitle'] as String,
      resultOfMatch:
          ResultModel.fromJson(json['resultOfMatch'] as Map<String, dynamic>),
      video: json['video'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$MatchModelImplToJson(_$MatchModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'location': instance.location,
      'dayofMatch': instance.dayofMatch.toIso8601String(),
      'leagueTitle': instance.leagueTitle,
      'resultOfMatch': instance.resultOfMatch,
      'video': instance.video,
      'image': instance.image,
    };
