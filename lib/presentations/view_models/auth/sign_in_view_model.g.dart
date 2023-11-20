// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignInFormModelImpl _$$SignInFormModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SignInFormModelImpl(
      formValid: json['formValid'] as bool?,
      emailValid: json['emailValid'] as bool,
      emailError: json['emailError'] as String,
      passwordError: json['passwordError'] as String,
      passwordValid: json['passwordValid'] as bool,
      email: json['email'] as String,
      password: json['password'] as String,
      showPassword: json['showPassword'] as bool,
      formKey: _$JsonConverterFromJson<Object, GlobalKey<FormState>>(
          json['formKey'], const GlobalKeyConverter().fromJson),
    );

Map<String, dynamic> _$$SignInFormModelImplToJson(
        _$SignInFormModelImpl instance) =>
    <String, dynamic>{
      'formValid': instance.formValid,
      'emailValid': instance.emailValid,
      'emailError': instance.emailError,
      'passwordError': instance.passwordError,
      'passwordValid': instance.passwordValid,
      'email': instance.email,
      'password': instance.password,
      'showPassword': instance.showPassword,
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
