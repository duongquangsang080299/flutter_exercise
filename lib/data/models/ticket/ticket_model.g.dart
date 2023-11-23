// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TicketModelImpl _$$TicketModelImplFromJson(Map<String, dynamic> json) =>
    _$TicketModelImpl(
      id: json['id'] as String,
      sale: (json['sale'] as num).toDouble(),
      desc: json['desc'] as String,
    );

Map<String, dynamic> _$$TicketModelImplToJson(_$TicketModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sale': instance.sale,
      'desc': instance.desc,
    };
