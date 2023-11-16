import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_view_model.freezed.dart';
part 'sign_in_view_model.g.dart';

class GlobalKeyConverter
    implements JsonConverter<GlobalKey<FormState>?, Map<String, dynamic>?> {
  const GlobalKeyConverter();

  @override
  GlobalKey<FormState>? fromJson(Map<String, dynamic>? json) {
    if (json != null) {
      return GlobalKey<FormState>();
    }
    return null;
  }

  @override
  Map<String, dynamic>? toJson(GlobalKey<FormState>? key) {
    return null;
  }
}

@freezed

/// SignIn form model
class SignInFormModel with _$SignInFormModel {
  @JsonSerializable(explicitToJson: true)
  const factory SignInFormModel({
    required String email,
    required String password,
    required bool showPassword,
    @GlobalKeyConverter() GlobalKey<FormState>? formKey,
  }) = _SignInFormModel;

  factory SignInFormModel.fromJson(Map<String, dynamic> json) =>
      _$SignInFormModelFromJson(json);
}
