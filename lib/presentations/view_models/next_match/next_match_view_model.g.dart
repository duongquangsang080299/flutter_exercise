// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'next_match_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MatchDetailViewModelImpl _$$MatchDetailViewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MatchDetailViewModelImpl(
      matchDetail:
          MatchModel.fromJson(json['matchDetail'] as Map<String, dynamic>),
      goalMatch: GoalsModel.fromJson(json['goalMatch'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MatchDetailViewModelImplToJson(
        _$MatchDetailViewModelImpl instance) =>
    <String, dynamic>{
      'matchDetail': instance.matchDetail,
      'goalMatch': instance.goalMatch,
    };
