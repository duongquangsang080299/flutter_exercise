import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:soccer_club_app/presentations/view_models/auth/global_key_model.dart';

part 'reset_password_view_model.freezed.dart';
part 'reset_password_view_model.g.dart';

@freezed

/// ResetPassword form model
class ResetPasswordFormModel with _$ResetPasswordFormModel {
  @JsonSerializable(explicitToJson: true)
  const factory ResetPasswordFormModel({
    required String emailError,
    required bool emailValid,
    required String email,
    @GlobalKeyConverter() GlobalKey<FormState>? formKey,
  }) = _ResetPasswordFormModel;

  factory ResetPasswordFormModel.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordFormModelFromJson(json);
}
