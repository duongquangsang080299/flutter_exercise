// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeViewModelImpl _$$HomeViewModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeViewModelImpl(
      userName: json['userName'] == null
          ? null
          : UserModel.fromJson(json['userName'] as Map<String, dynamic>),
      nextMatch: json['nextMatch'] == null
          ? null
          : MatchModel.fromJson(json['nextMatch'] as Map<String, dynamic>),
      news: (json['news'] as List<dynamic>?)
          ?.map((e) => MatchModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      ticket: json['ticket'] == null
          ? null
          : TicketModel.fromJson(json['ticket'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeViewModelImplToJson(_$HomeViewModelImpl instance) =>
    <String, dynamic>{
      'userName': instance.userName,
      'nextMatch': instance.nextMatch,
      'news': instance.news,
      'ticket': instance.ticket,
    };
