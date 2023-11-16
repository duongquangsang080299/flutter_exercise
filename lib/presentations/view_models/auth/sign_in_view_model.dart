import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

/// Define the FocusedField enum
enum FocusedField {
  email,
  password,
}

/// SignIn form model
class SignInFormModel extends Equatable {
  final bool formValid;
  final String email;
  final String password;
  final bool processing;
  final bool showPassword;
  final bool goSignIn;
  final GlobalKey<FormState> formKey;
  final FocusedField focusedField;

  const SignInFormModel({
    required this.formValid,
    required this.email,
    required this.password,
    required this.processing,
    required this.showPassword,
    required this.goSignIn,
    required this.formKey,
    required this.focusedField,
  });

  SignInFormModel copyWith({
    bool? formValid,
    String? email,
    String? password,
    bool? processing,
    bool? showPassword,
    bool? goSignIn,
    GlobalKey<FormState>? formKey,
    FocusedField? focusedField,
  }) {
    return SignInFormModel(
      formValid: formValid ?? this.formValid,
      email: email ?? this.email,
      password: password ?? this.password,
      showPassword: showPassword ?? this.showPassword,
      processing: processing ?? this.processing,
      goSignIn: goSignIn ?? this.goSignIn,
      formKey: formKey ?? this.formKey,
      focusedField: focusedField ?? this.focusedField,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'formValid': formValid,
      'email': email,
      'password': password,
      'processing': processing,
      'showPassword': showPassword,
      'goSignIn': goSignIn,
      'formKey': formKey,
      'focusedField': focusedField,
    };
  }

  factory SignInFormModel.fromMap(Map<String, dynamic> map) {
    return SignInFormModel(
      formValid: map['formValid'] ?? false,
      email: map['email'] ?? '',
      password: map['password'] ?? '',
      processing: map['processing'] ?? false,
      goSignIn: map['goSignIn'] ?? false,
      showPassword: map['showPassword'] ?? false,
      formKey: map['formKey'] ?? false,
      focusedField: map['focusedField'] ?? FocusedField.email,
    );
  }

  String toJson() => json.encode(toMap());

  factory SignInFormModel.fromJson(String source) =>
      SignInFormModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'SignInFormModel( formValid: $formValid, email: $email, '
        'password: $password, processing: $processing,showPassword:$showPassword, goSignIn: $goSignIn, '
        'formKey: $formKey, focusedField: $focusedField)';
  }

  @override
  List<Object> get props {
    return [
      formValid,
      email,
      password,
      showPassword,
      processing,
      goSignIn,
      formKey,
      focusedField,
    ];
  }
}
