import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:soccer_club_app/presentations/view_models/auth/global_key_model.dart';

part 'sign_up_view_model.freezed.dart';
part 'sign_up_view_model.g.dart';

@freezed

/// SignUp form model
class SignUpFormModel with _$SignUpFormModel {
  @JsonSerializable(explicitToJson: true)
  const factory SignUpFormModel({
    required String usernameError,
    required String emailError,
    required String passwordError,
    required bool usernameValid,
    required bool emailValid,
    required bool passwordValid,
    required bool isValid,
    required String username,
    required String email,
    required String password,
    @GlobalKeyConverter() GlobalKey<FormState>? formKey,
  }) = _SignUpFormModel;

  factory SignUpFormModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpFormModelFromJson(json);
}
