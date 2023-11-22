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
      reulstOfMatch:
          ResultModel.fromJson(json['reulstOfMatch'] as Map<String, dynamic>),
      tickets: TicketModel.fromJson(json['tickets'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeViewModelImplToJson(_$HomeViewModelImpl instance) =>
    <String, dynamic>{
      'nameUser': instance.nameUser,
      'match': instance.match,
      'team': instance.team,
      'reulstOfMatch': instance.reulstOfMatch,
      'tickets': instance.tickets,
    };
