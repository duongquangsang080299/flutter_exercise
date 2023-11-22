// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'next_match_view_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NextMatchViewModelImpl _$$NextMatchViewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NextMatchViewModelImpl(
      nextMatch: MatchModel.fromJson(json['nextMatch'] as Map<String, dynamic>),
      goalMatch: GoalModel.fromJson(json['goalMatch'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NextMatchViewModelImplToJson(
        _$NextMatchViewModelImpl instance) =>
    <String, dynamic>{
      'nextMatch': instance.nextMatch,
      'goalMatch': instance.goalMatch,
    };
