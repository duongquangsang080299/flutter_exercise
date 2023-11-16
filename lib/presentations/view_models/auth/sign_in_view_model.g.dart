// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignInFormModelImpl _$$SignInFormModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SignInFormModelImpl(
      processing: json['processing'] as bool?,
      emailError: json['emailError'] as String,
      passwordError: json['passwordError'] as String,
      emailValid: json['emailValid'] as bool,
      passwordValid: json['passwordValid'] as bool,
      email: json['email'] as String,
      password: json['password'] as String,
      showPassword: json['showPassword'] as bool,
      formKey: const GlobalKeyConverter()
          .fromJson(json['formKey'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$$SignInFormModelImplToJson(
        _$SignInFormModelImpl instance) =>
    <String, dynamic>{
      'processing': instance.processing,
      'emailError': instance.emailError,
      'passwordError': instance.passwordError,
      'emailValid': instance.emailValid,
      'passwordValid': instance.passwordValid,
      'email': instance.email,
      'password': instance.password,
      'showPassword': instance.showPassword,
      'formKey': const GlobalKeyConverter().toJson(instance.formKey),
    };
