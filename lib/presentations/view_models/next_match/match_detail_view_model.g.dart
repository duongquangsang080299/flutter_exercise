// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_detail_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MatchDetailViewModelImpl _$$MatchDetailViewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MatchDetailViewModelImpl(
      match: json['match'] == null
          ? null
          : MatchModel.fromJson(json['match'] as Map<String, dynamic>),
      goalsMatch: (json['goalsMatch'] as List<dynamic>?)
          ?.map((e) => GoalsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MatchDetailViewModelImplToJson(
        _$MatchDetailViewModelImpl instance) =>
    <String, dynamic>{
      'match': instance.match,
      'goalsMatch': instance.goalsMatch,
    };
