// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeViewModelImpl _$$HomeViewModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeViewModelImpl(
      nameUser: UserModel.fromJson(json['nameUser'] as Map<String, dynamic>),
      match: MatchModel.fromJson(json['match'] as Map<String, dynamic>),
      team: TeamModel.fromJson(json['team'] as Map<String, dynamic>),
      goal: GoalModel.fromJson(json['goal'] as Map<String, dynamic>),
      ticket: TicketModel.fromJson(json['ticket'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeViewModelImplToJson(_$HomeViewModelImpl instance) =>
    <String, dynamic>{
      'nameUser': instance.nameUser,
      'match': instance.match,
      'team': instance.team,
      'goal': instance.goal,
      'ticket': instance.ticket,
    };
