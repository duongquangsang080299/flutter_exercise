import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_view_model.freezed.dart';
part 'reset_password_view_model.g.dart';

class GlobalKeyConverter
    implements JsonConverter<GlobalKey<FormState>, Object> {
  const GlobalKeyConverter();
  @override
  GlobalKey<FormState> fromJson(Object? object) {
    return object as GlobalKey<FormState>;
  }

  @override
  Object toJson(GlobalKey<FormState> key) => key;
}

@freezed

/// ResetPassword form model
class ResetPasswordFormModel with _$ResetPasswordFormModel {
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory ResetPasswordFormModel({
    String? emailError,
    String? errorMessage,
    required bool emailValid,
    required String email,
    @GlobalKeyConverter() GlobalKey<FormState>? formKey,
  }) = _ResetPasswordFormModel;

  factory ResetPasswordFormModel.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordFormModelFromJson(json);
}
