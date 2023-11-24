// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeViewModelImpl _$$HomeViewModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeViewModelImpl(
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      nextMatch: MatchModel.fromJson(json['nextMatch'] as Map<String, dynamic>),
      news: (json['news'] as List<dynamic>)
          .map((e) => MatchModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      ticket: TicketModel.fromJson(json['ticket'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeViewModelImplToJson(_$HomeViewModelImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'nextMatch': instance.nextMatch,
      'news': instance.news,
      'ticket': instance.ticket,
    };
