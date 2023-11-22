// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'next_match_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NextMatchViewModelImpl _$$NextMatchViewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NextMatchViewModelImpl(
      id: json['id'] as String?,
      dateTime: DateTime.parse(json['dateTime'] as String),
      descriptions: json['descriptions'] as String,
    );

Map<String, dynamic> _$$NextMatchViewModelImplToJson(
        _$NextMatchViewModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateTime': instance.dateTime.toIso8601String(),
      'descriptions': instance.descriptions,
    };
