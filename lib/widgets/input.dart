import 'package:flutter/material.dart';

class SCInput extends StatelessWidget {
  const SCInput({
    required this.labelText,
    super.key,
    this.hintText,
    this.focusNode,
    this.errorMessage,
    this.isPassword = false,
    this.suffixIcon,
    this.controller,
    this.validator,
    this.keyboardType,
    this.obscureText = false,
  });

  /// Factory constructor for password input
  factory SCInput.password({
    required String labelText,
    Key? key,
    FocusNode? focusNode,
    String? hintText,
    Widget? suffixIcon,
  }) {
    return SCInput(
      key: key,
      labelText: labelText,
      focusNode: focusNode,
      hintText: hintText,
      isPassword: true,
      suffixIcon: suffixIcon,
      obscureText: true,
    );
  }

  /// Factory constructor for regular text input
  factory SCInput.textField({
    required String labelText,
    Key? key,
    FocusNode? focusNode,
    String? hintText,
  }) {
    return SCInput(
      key: key,
      labelText: labelText,
      focusNode: focusNode,
      hintText: hintText,
    );
  }

  /// Factory constructor for email input
  factory SCInput.email({
    required String labelText,
    Key? key,
    FocusNode? focusNode,
    String? hintText,
  }) {
    return SCInput(
      key: key,
      labelText: labelText,
      focusNode: focusNode,
      hintText: hintText,
      keyboardType:
          // Set the keyboard type to email
          TextInputType.emailAddress,
    );
  }

  /// Properties
  final String? errorMessage;
  final bool isPassword;
  final String? hintText;
  final String labelText;
  final FocusNode? focusNode;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    /// Build the TextFormField with provided properties
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
      ),
      validator: validator,
      keyboardType: keyboardType,
      obscureText: obscureText,
    );
  }
}
