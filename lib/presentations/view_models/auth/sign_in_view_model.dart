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
    required String emailError,
    required String passwordError,
    required bool emailValid,
    required bool passwordValid,
    required bool isValid,
    required String email,
    required String password,
    @GlobalKeyConverter() GlobalKey<FormState>? formKey,
  }) = _SignInFormModel;

  factory SignInFormModel.fromJson(Map<String, dynamic> json) =>
      _$SignInFormModelFromJson(json);
}
