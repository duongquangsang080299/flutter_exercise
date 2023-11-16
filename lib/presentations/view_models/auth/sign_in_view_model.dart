import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_view_model.freezed.dart';
part 'sign_in_view_model.g.dart';

@freezed

/// SignIn form model
class SignInFormModel with _$SignInFormModel {
  const factory SignInFormModel({
    required String email,
    required String password,
    required bool showPassword,
    bool? formValid,
    bool? processing,
  }) = _SignInFormModel;

  factory SignInFormModel.fromJson(Map<String, Object?> json) =>
      _$SignInFormModelFromJson(json);
}
