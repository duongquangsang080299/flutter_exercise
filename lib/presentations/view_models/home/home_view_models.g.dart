// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeViewModelImpl _$$HomeViewModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeViewModelImpl(
      id: json['id'] as String?,
      userId: json['userId'] as String,
      nextMatch: NextMatchViewModel.fromJson(
          json['nextMatch'] as Map<String, dynamic>),
      news: NewsViewModel.fromJson(json['news'] as Map<String, dynamic>),
      liveMatch: LiveMatchViewModel.fromJson(
          json['liveMatch'] as Map<String, dynamic>),
      tickets:
          TicketsViewModel.fromJson(json['tickets'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeViewModelImplToJson(_$HomeViewModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'nextMatch': instance.nextMatch,
      'news': instance.news,
      'liveMatch': instance.liveMatch,
      'tickets': instance.tickets,
    };
