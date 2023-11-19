// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpFormModelImpl _$$SignUpFormModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SignUpFormModelImpl(
      usernameError: json['usernameError'] as String,
      emailError: json['emailError'] as String,
      passwordError: json['passwordError'] as String,
      usernameValid: json['usernameValid'] as bool,
      emailValid: json['emailValid'] as bool,
      passwordValid: json['passwordValid'] as bool,
      isValid: json['isValid'] as bool,
      username: json['username'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      formKey: _$JsonConverterFromJson<Object, GlobalKey<FormState>>(
          json['formKey'], const GlobalKeyConverter().fromJson),
    );

Map<String, dynamic> _$$SignUpFormModelImplToJson(
        _$SignUpFormModelImpl instance) =>
    <String, dynamic>{
      'usernameError': instance.usernameError,
      'emailError': instance.emailError,
      'passwordError': instance.passwordError,
      'usernameValid': instance.usernameValid,
      'emailValid': instance.emailValid,
      'passwordValid': instance.passwordValid,
      'isValid': instance.isValid,
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
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
