// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResetPasswordFormModelImpl _$$ResetPasswordFormModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResetPasswordFormModelImpl(
      emailError: json['emailError'] as String?,
      email: json['email'] as String,
      errorMessage: json['errorMessage'] as String?,
      formKey: _$JsonConverterFromJson<Object, GlobalKey<FormState>>(
          json['formKey'], const GlobalKeyConverter().fromJson),
    );

Map<String, dynamic> _$$ResetPasswordFormModelImplToJson(
        _$ResetPasswordFormModelImpl instance) =>
    <String, dynamic>{
      'emailError': instance.emailError,
      'email': instance.email,
      'errorMessage': instance.errorMessage,
      'formKey': _$JsonConverterToJson<Object, GlobalKey<FormState>>(
          instance.formKey, const GlobalKeyConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
