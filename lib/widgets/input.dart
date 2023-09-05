import 'package:flutter/material.dart';

class SCInput extends StatelessWidget {
  const SCInput({
    super.key, // Use Key? key instead of super.key.
    this.focusNode,
    this.suffixIcon,
    this.textInputAction,
    this.keyboardType,
    this.decoration,
    this.obscureText = false,
    this.controller,
    this.validator,
  });

  /// Factory constructor for email input
  factory SCInput.email({
    FocusNode? focusNode,
    TextInputType? keyboardType,
    InputDecoration? decoration,
    TextInputAction? textInputAction,
  }) {
    return SCInput(
      focusNode: focusNode,
      decoration: decoration,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
    );
  }

  /// Factory constructor for username input
  factory SCInput.username({
    FocusNode? focusNode,
    TextInputType? keyboardType,
    TextInputAction? textInputAction,
    InputDecoration? decoration,
  }) {
    return SCInput(
      focusNode: focusNode,
      keyboardType: keyboardType,
      decoration: decoration,
      textInputAction: textInputAction,
    );
  }

  /// Factory constructor for password input
  factory SCInput.password({
    Key? key,
    FocusNode? focusNode,
    Widget? suffixIcon,
    InputDecoration? decoration,
    bool obscureText = false, // Set default value to false.
    TextInputType? keyboardType,
  }) {
    return SCInput(
      key: key,
      focusNode: focusNode,
      decoration: decoration,
      obscureText: obscureText,
      suffixIcon: suffixIcon,
      keyboardType: keyboardType,
    );
  }

  /// Properties

  final FocusNode? focusNode;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool? obscureText;
  final String? Function(String?)? validator;
  final InputDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    /// Build the TextFormField with provided properties
    return TextFormField(
      decoration: InputDecoration(labelText: '', suffixIcon: suffixIcon),
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      focusNode: focusNode,
      validator: validator,
      controller: controller,
      obscureText: obscureText ?? false,
    );
  }
}
