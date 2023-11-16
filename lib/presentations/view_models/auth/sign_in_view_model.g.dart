// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignInFormModelImpl _$$SignInFormModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SignInFormModelImpl(
      email: json['email'] as String,
      password: json['password'] as String,
      showPassword: json['showPassword'] as bool,
      formValid: json['formValid'] as bool?,
      processing: json['processing'] as bool?,
    );

Map<String, dynamic> _$$SignInFormModelImplToJson(
        _$SignInFormModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'showPassword': instance.showPassword,
      'formValid': instance.formValid,
      'processing': instance.processing,
    };
