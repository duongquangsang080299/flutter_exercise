import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:soccer_club_app/presentations/view_models/auth/global_key_converter.dart';

part 'sign_in_view_model.freezed.dart';
part 'sign_in_view_model.g.dart';

@freezed

/// SignIn form model
class SignInFormModel with _$SignInFormModel {
  @JsonSerializable(explicitToJson: true)
  const factory SignInFormModel({
    bool? formValid,
    required bool emailValid,
    required String emailError,
    required String passwordError,
    required bool passwordValid,
    required String email,
    required String password,
    required bool showPassword,
    @GlobalKeyConverter() GlobalKey<FormState>? formKey,
  }) = _SignInFormModel;

  factory SignInFormModel.fromJson(Map<String, dynamic> json) =>
      _$SignInFormModelFromJson(json);
}
